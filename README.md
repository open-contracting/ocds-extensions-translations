# OCDS Extensions Translations

## Setup

Install requirements:

```bash
pip install -r requirements.txt
```

Install `gettext` and `translate-toolkit` for the `manage.py add-and-remove` command. With Homebrew:

```bash
brew install gettext translate-toolkit
```

Install `python-Levenshtein` to silence warning from `translate-toolkit` (`WARNING:root:Python-Levenshtein not found. Continuing with built-in (slower) fuzzy matching.`):

```bash
eval $(brew --prefix translate-toolkit)/libexec/bin/python -m pip install python-Levenshtein
```

## Tasks

### Generate POT files

1. Generate POT files for live versions of registered extensions:

    ```bash
    ./manage.py extract
    ```

1. Update the configuration file of the translation tool.

    This occurs automatically when using `--transifex-organization` and `--transifex-project` with the `extract` command.

    For Crowdin, use `manage.py` from [data-support](https://github.com/open-contracting/data-support/blob/main/manage.py):

    ```bash
    path/to/manage.py update-crowdinyml-files -p build/locale -d locale --ignore v1
    ```

1. Push the source strings to the translation tool.

    This occurs automatically when using `--transifex-organization` and `--transifex-project` with the `extract` command.

### Pretranslate translatable strings

**WARNING:**

Generate POT files, then:

1. Pull translated strings from the translation tool.

    **WARNING: Changes made to PO files outside Transifex will be lost.**

    This occurs automatically when using `--transifex-organization` and `--transifex-project` with the `pretranslate` command.

1. Pretranslate translatable strings for live versions of registered extensions:

    **WARNING: If different resources translate the same string in different ways, the translated strings will change to that of the last alphabetically sorted extension.**

    ```bash
    ./manage.py pretranslate
    ```

1. Push translated strings to the translation tool.

    This occurs automatically when using `--transifex-organization` and `--transifex-project` with the `pretranslate` command.

### Add new extensions to, and remove yanked extensions from, the repository

1. Add and remove the extensions:

    ```bash
    ./manage.py add-and-remove
    ```

1. Update the configuration file of the translation tool, as above.

1. Push the source strings and translated strings to the translation tool.

    This occurs automatically when using `--transifex-organization` and `--transifex-project` with the `extract` command.

### Pull translations from translation tool

```bash
crowdin pull translations
```

Or:

```bash
tx pull -w 20 -f -a
```

Then:

```bash
sphinx-intl build -d locale
```

### Add new versions of core extensions

*Note: This section has not yet been added to `manage.py`. These commands are in fish.*

Set environment variables as appropriate (using the fish shell):

```fish
set old_version v1.1.3
set new_version v1.1.4
set new_version_underscored v1_1_4
```

Generate POT files for the new versions of core extensions:

```bash
ocdsextensionregistry generate-pot-files build/locale bids==$new_version enquiries==$new_version location==$new_version lots==$new_version milestone_documents==$new_version participation_fee==$new_version process_title==$new_version
```

Pre-populate the PO files:

```fish
for extension in bids enquiries location lots milestone_documents participation_fee process_title
  for lang in (ls locale)
    mkdir -p locale/$lang/LC_MESSAGES/$extension/$new_version
    for domain in docs schema codelists
      if [ -f locale/$lang/LC_MESSAGES/$extension/$old_version/$domain.po ]
        pretranslate --nofuzzymatching -t locale/$lang/LC_MESSAGES/$extension/$old_version/$domain.po build/locale/$extension/$new_version/$domain.pot locale/$lang/LC_MESSAGES/$extension/$new_version/$domain.po
      end
    end
  end
end
```

Update the `.tx/config` file:

```bash
sphinx-intl update-txconfig-resources --transifex-organization-name open-contracting-partnership-1 --transifex-project-name ocds-extensions --pot-dir build/locale --locale-dir locale 
```

Push the new source files:

```fish
for i in (grep $new_version_underscored .tx/config | tr -d '[]')
  tx push -s $i
end
```

Push the pre-populated translation files:

```fish
for i in (grep $new_version_underscored .tx/config | tr -d '[]')
  tx push -f -t $i
end
```

### Find stale extensions

You can exclude from the translation tool any extensions whose source strings haven't changed in many years.

1. [Download registered extensions](https://github.com/open-contracting/standard-maintenance-scripts#standard-development-tasks)

1. Update local repositories:

    ```bash
    ./manage.py git-pull path/to/directory/of/extensions
    ```

1. Find stale extensions:

    ```bash
    ./manage.py stale path/to/directory/of/extensions 3
    ```

You can now delete these extensions from the translation tool, if the account is near its limits.

*Note: At present, when using `--transifex-organization` and `--transifex-project`, `manage.py extract` will re-add these extensions to Transifex.*

### Compare different versions of PO/POT files

Change the two paths below, and change `.po` to `.pot` if appropriate:

```bash
cd path/to/locale/es
for i in **.po; do
  msgcmp $i relative/path/to/another/locale/es/$i
done
```
