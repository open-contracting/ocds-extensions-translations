#!/usr/bin/env python
import pathlib
from contextlib import contextmanager
from datetime import UTC, datetime, timedelta

import click
import git

KNOWN_BRANCHES = {"1.1", "1.2", "master"}
TRANSLATABLE_BRANCHES = {"1.1", "master"}
# Like `ocdsextensionregistry generate-pot-files`.
TRANSLATABLE_PATHS = ["extension.json", "release-schema.json", "codelists/"]


def extensions(directory):
    for child in directory.iterdir():
        if child.is_dir() and (child / "extension.json").is_file():
            yield child, git.Repo(child)


def translatable_branches(repo):
    path = pathlib.Path(repo.working_dir).name

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


@contextmanager
def checkout(repo, ref):
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
@click.argument("directory", type=click.Path(exists=True, file_okay=False, path_type=pathlib.Path))
def pull(directory):
    """
    Pull translatable branches and fetch any tags.
    """
    for child, repo in extensions(directory):
        origin = repo.remote("origin")
        origin.fetch()

        for ref in translatable_branches(repo):
            with checkout(repo, ref):
                info = origin.pull(ref, rebase=True)[0]
                click.echo(".", nl=False)

                if str(info.ref) != "FETCH_HEAD" or info.flags != 0 or info.note != "":
                    click.secho(f"{child.name}: {info.ref=!s} {info.flags=} {info.note=}", fg="yellow", err=True)


@cli.command()
@click.argument("directory", type=click.Path(exists=True, file_okay=False, path_type=pathlib.Path))
@click.argument("years", type=int)
def stale(directory, years):
    """
    List extensions that have not changed in many years.
    """
    delta = timedelta(days=365 * years)

    for child, repo in extensions(directory):
        for ref in translatable_branches(repo):
            with checkout(repo, ref):
                commit = next(repo.iter_commits(paths=TRANSLATABLE_PATHS, max_count=1))

                if datetime.fromtimestamp(commit.committed_date, tz=UTC) < datetime.now(tz=UTC) - delta:
                    click.echo(child.name)


if __name__ == "__main__":
    cli()
