#!/usr/bin/env python
import argparse
import configparser
import csv
import io
import shutil
import subprocess
from contextlib import contextmanager
from datetime import UTC, datetime, timedelta
from pathlib import Path

import click
import git
import requests
from ocdsextensionregistry.commands import generate_pot_files

KNOWN_BRANCHES = {"1.1", "1.2", "master"}
# Add major versions once released.
TRANSLATABLE_BRANCHES = {"1.1", "master"}
# Like `ocdsextensionregistry generate-pot-files`.
TRANSLATABLE_PATHS = ["extension.json", "release-schema.json", "codelists/"]

CWD = Path()
TXCONFIG = CWD / ".tx" / "config"
POT_DIR = CWD / "build" / "locale"
LOCALE_DIR = CWD / "locale"


def local_extensions(directory):
    """Yield each local repository as a tuple of a pathlib.Path and git.Repo."""
    for child in directory.iterdir():
        if child.is_dir() and (child / "extension.json").is_file():
            yield child, git.Repo(child)


def registered_extensions():
    """Return all identifiers of registered extensions as a set."""
    response = requests.get(
        "https://github.com/open-contracting/extension_registry/raw/main/extensions.csv", timeout=10
    )
    response.raise_for_status()
    return {row["Id"] for row in csv.DictReader(io.StringIO(response.text))}


def translatable_branches(repo):
    """
    Yield each branch that is translatable, as a git.Reference.

    Warn about unrecognized branches and detached HEADs.
    """
    path = Path(repo.working_dir).name

    for ref in repo.references:
        if ref.path.startswith(("refs/tags/", "refs/remotes/")):
            continue

        if ref.name not in KNOWN_BRANCHES:
            click.secho(f"{path}: unrecognized branch '{ref.name}'", fg="yellow", err=True)
            continue

        if repo.head.is_detached:
            click.secho(f"{path} is in a 'detached HEAD' state, skipping", fg="red", err=True)
            continue

        if ref.name not in TRANSLATABLE_BRANCHES:
            continue

        yield ref


def run(args, **kwargs):
    """Echo and run a command."""
    line_length = 200
    command = " ".join(map(str, args))
    if len(command) > line_length:
        command = f"{command[:line_length]}..."
    click.echo(command)
    subprocess.run(args, check=True, **kwargs)  # noqa: S603 # trusted input


def run_generate_pot_files(args):
    """Run ocdsextensionregistry generate-pot-files."""
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(required=True)
    command = generate_pot_files.Command(subparsers)
    args = ["generate-pot-files", *map(str, args)]
    command.args = parser.parse_args(args)
    click.echo(f"ocdsextensionregistry {' '.join(args)}")
    command.handle()


def create_compendium(path, messages):
    """Prepare a compendium from the existing extensions."""
    click.secho("Creating compendium...", fg="blue")
    run(["msgcat", "--use-first", "-o", path, *sorted(messages.glob("**/*.po"), reverse=True)])


def run_pretranslate(pot_dir, compendium, messages):
    """
    Pretranslate the PO files corresponding to the POT files in the provided directory.

    Initialize a PO file if it doesn't exist.
    """
    for pot in pot_dir.glob("**/*.pot"):
        po_dir = messages / pot.parent.relative_to(pot_dir)
        po = po_dir / f"{pot.stem}.po"

        # Create the directory for the PO file.
        po_dir.mkdir(parents=True, exist_ok=True)

        # Initialize the PO file.
        if not po.exists():
            run(["msginit", "--no-translator", "--locale", "es", "-i", pot, "-o", po])

        # Pre-populate the PO file.
        run(["pretranslate", "--progress=none", "--nofuzzymatching", "-t", compendium, pot, po])


def run_tx_push(transifex_organization, transifex_project, *args):
    """Push to Transifex, for live versions of existing extensions."""
    create_txconfig(transifex_organization, transifex_project)

    # Treat "v1..." versions as frozen versions.
    resources = [resource for resource in transifex_resources() if "--v1" not in resource]

    run(["tx", "push", "-w", "20", *args, *resources])


def transifex_resources(transifex_project):
    """Return all names of Transifex resources as a set."""
    config = configparser.ConfigParser()
    config.read(TXCONFIG)
    return {
        f"{transifex_project}.{config[section]['resource_name']}"
        for section in config.sections()
        if "resource_name" in config[section]
    }


def create_txconfig(transifex_organization, transifex_project):
    """Re-create the .tx/config file, delete any old resources and return any new resources."""
    click.secho("Regenerating .tx/config...", fg="blue")

    text = TXCONFIG.read_text()

    before_resources = transifex_resources(transifex_project)

    TXCONFIG.unlink()
    run(["sphinx-intl", "create-txconfig"])
    run(
        [
            "sphinx-intl",
            "update-txconfig-resources",
            "--transifex-organization-name",
            transifex_organization,
            "--transifex-project-name",
            transifex_project,
            "--pot-dir",
            POT_DIR,
            "--locale-dir",
            LOCALE_DIR,
        ]
    )

    after_resources = transifex_resources(transifex_project)

    old_resources = before_resources - after_resources
    if old_resources:
        click.secho("Deleting old resources...", fg="blue")

        # tx can't operate on unconfigured resources.
        with config(TXCONFIG, text):
            run(["tx", "delete", "--skip", *old_resources])

    return after_resources - before_resources


@contextmanager
def config(replacement):
    """Run code using different content for the .tx/config file."""
    text = TXCONFIG.read_text()

    try:
        TXCONFIG.write_text(replacement)

        yield
    finally:
        TXCONFIG.write_text(text)


@contextmanager
def checkout(repo, ref):
    """
    Run code against a branch, temporarily switching to the branch if needed.

    Warn with standard error if git errors.
    """
    try:
        old = repo.head.reference
        if ref != old:
            ref.checkout()

        yield
    except git.exc.GitCommandError as e:
        click.secho(f"{repo.working_dir}: {''.join(e.args[2].decode().splitlines()[:-2])}", fg="red", err=True)
    finally:
        old.checkout()


@click.group()
def cli():
    pass


@cli.command()
@click.argument("directory", type=click.Path(exists=True, file_okay=False, path_type=Path))
def git_pull(directory):
    """Pull translatable branches and fetch any tags to local repositories."""
    for child, repo in local_extensions(directory):
        origin = repo.remote("origin")
        origin.fetch()

        for ref in translatable_branches(repo):
            with checkout(repo, ref):
                info = origin.pull(ref, rebase=True)[0]
                click.echo(".", nl=False)

                if str(info.ref) != "FETCH_HEAD" or info.flags != 0 or info.note != "":
                    click.secho(f"{child.name}: {info.ref=!s} {info.flags=} {info.note=}", fg="yellow", err=True)


@cli.command()
@click.argument("transifex-organization")
@click.argument("transifex-project")
def update(transifex_organization, transifex_project):
    """Push source strings to Transifex, for live versions of registered extensions."""
    # Same as https://ocdsextensionregistry.readthedocs.io/en/latest/translation.html
    run_generate_pot_files(["--no-frozen", POT_DIR])

    click.secho("Pushing source (POT) files...", fg="blue")
    run_tx_push(transifex_organization, transifex_project, "-f", "-s")


@cli.command()
@click.argument("transifex-organization")
@click.argument("transifex-project")
def pretranslate(transifex_organization, transifex_project):
    """
    Pretranslate and push translated strings to Transifex, for live versions of registered extensions.

    Pull translated strings from Transifex before pretranslation.
    """
    messages = CWD / "locale" / "es" / "LC_MESSAGES"
    compendium = CWD / "es.po"

    click.secho("Pulling all files...", fg="blue")
    run(["tx", "pull", "-w", "20", "-f", "-a", "--silent"])

    create_compendium(compendium, messages)

    click.secho("Running pretranslate...", fg="blue")
    run_pretranslate(POT_DIR, compendium, messages)

    click.secho("Pushing translation (PO) files...", fg="blue")
    run_tx_push(transifex_organization, transifex_project, "-f", "-t")


@cli.command()
@click.argument("transifex-organization")
@click.argument("transifex-project")
def add_and_remove(transifex_organization, transifex_project):
    """
    Add new extensions from the extension registry and remove yanked extensions.

    Pretranslate, and push source and translated strings to Transifex.
    """
    messages = CWD / "locale" / "es" / "LC_MESSAGES"
    compendium = CWD / "es.po"
    repo = git.Repo()

    registered = registered_extensions()
    extracted = {d.name for d in POT_DIR.iterdir() if d.is_dir()}
    translated = {d.name for d in messages.iterdir() if d.is_dir()}

    # Delete the POT and PO files for unregistered extensions.
    for extension in extracted - registered:
        click.secho(f"- {extension}", fg="red")

        path = POT_DIR / extension
        click.echo(f"rm -rf {path}")
        shutil.rmtree(path)

    for extension in translated - registered:
        click.secho(f"- {extension}", fg="red")

        path = messages / extension
        click.echo(f"git rm -r {path}")
        repo.index.remove(path, working_tree=True, r=True)

    # Prepare a compendium from the existing extensions.
    create_compendium(compendium, messages)

    # Create the POT and PO files for new extensions.
    for extension in registered - (extracted & translated):
        click.secho(f"+ {extension}", fg="green")

        # NOTE: Future languages can reuse these POT files.
        run_generate_pot_files([POT_DIR, extension])

        run_pretranslate(POT_DIR / extension, compendium, messages)

    # Regenerate .tx/config file to remove any broken references.
    new_resources = create_txconfig(transifex_organization, transifex_project)

    # Push the POT (source) and PO (translation) files.
    if new_resources:  # If no resources are provided, tx pushes all resources.
        click.secho("Pushing new resources...", fg="blue")
        run(["tx", "push", "-w", "20", "-f", "-s", "-t", "-a", *new_resources])


@cli.command()
@click.argument("directory", type=click.Path(exists=True, file_okay=False, path_type=Path))
@click.argument("years", type=int)
def stale(directory, years):
    """List extensions that have not changed in many years."""
    delta = timedelta(days=365 * years)

    # GitHub API allows listing commits for only one path at a time.
    # https://docs.github.com/en/rest/commits/commits?apiVersion=2022-11-28#list-commits

    for child, repo in local_extensions(directory):
        for ref in translatable_branches(repo):
            with checkout(repo, ref):
                commit = next(repo.iter_commits(paths=TRANSLATABLE_PATHS, max_count=1))

                if datetime.fromtimestamp(commit.committed_date, tz=UTC) < datetime.now(tz=UTC) - delta:
                    click.echo(child.name)


if __name__ == "__main__":
    cli()
