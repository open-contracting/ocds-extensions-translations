#!/usr/bin/env python
import pathlib
from datetime import UTC, datetime, timedelta

import click
import git

known_branches = {"1.1", "1.2", "master"}
translatable_branches = {"1.1", "master"}
# Like `ocdsextensionregistry generate-pot-files`.
translatable_paths = ["extension.json", "release-schema.json", "codelists/"]


@click.group()
def cli():
    pass


@cli.command()
@click.argument("directory", type=click.Path(exists=True, file_okay=False, path_type=pathlib.Path))
@click.argument("years", type=int)
def stale(directory, years):
    """
    List extensions that have not changed in many years.
    """

    delta = timedelta(days=365 * years)

    for child in directory.iterdir():
        # If not an extension directory.
        if not child.is_dir() or not (child / "extension.json").is_file():
            continue

        repo = git.Repo(child)
        origin = repo.remote("origin")

        for ref in repo.references:
            if ref.path.startswith(("refs/tags/", "refs/remotes/")):
                continue

            known = ref.name in known_branches
            if not known:
                click.secho(f"{child.name}: unrecognized branch '{ref.name}'", fg="yellow", err=True)
                continue

            head = repo.head
            if head.is_detached:
                click.secho(f"{child.name} is in a 'detached HEAD' state, skipping", fg="red", err=True)
                continue

            if ref.name not in translatable_branches:
                continue

            try:
                head_ref = head.reference
                if ref != head_ref:
                    ref.checkout()

                info = origin.pull(ref, rebase=True)[0]
                if str(info.ref) != "FETCH_HEAD" or info.flags != 0 or info.note != "":
                    click.secho(f"{child.name}: {info.ref=!s} {info.flags=} {info.note=}", fg="yellow", err=True)

                commit = next(repo.iter_commits(paths=translatable_paths, max_count=1))
                if datetime.fromtimestamp(commit.committed_date, tz=UTC) < datetime.now(tz=UTC) - delta:
                    click.echo(child.name)
            except git.exc.GitCommandError as e:
                click.secho(f"{child.name}: {''.join(e.args[2].decode().splitlines()[:-2])}", fg="red", err=True)
            finally:
                head_ref.checkout()


if __name__ == "__main__":
    cli()
