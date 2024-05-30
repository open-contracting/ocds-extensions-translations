# OCDS Extensions Translations

## Setup

Install requirements:

```bash
pip install -r requirements.txt
```

Install `gettext` and `translate-toolkit` for the `manage.py add-and-remove` command:

```bash
brew install gettext translate-toolkit
```

Install `python-Levenshtein` to silence warning from `translate-toolkit` (`WARNING:root:Python-Levenshtein not found. Continuing with built-in (slower) fuzzy matching.`):

```fish
eval (brew --prefix translate-toolkit)/libexec/bin/python -m pip install python-Levenshtein
```

## Tasks

### Push source strings to Transifex

```bash
./manage.py update open-contracting-partnership-1 ocds-extensions
```

### Add new extensions to, and remove yanked extensions from, Transifex

```bash
./manage.py add-and-remove open-contracting-partnership-1 ocds-extensions
```

### Pull translations from Transifex

```bash
tx pull -f -a
sphinx-intl build -d locale
```

### Add new versions of core extensions

*This section has not yet been added to manage.py.*

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

You can exclude from Transifex any extensions whose source strings haven't changed in many years.

1. [Download all registered extensions](https://github.com/open-contracting/standard-maintenance-scripts#standard-development-tasks)

1. Update existing local repositories:

    ```bash
    ./manage.py pull path/to/directory/of/extensions
    ```

1. Find stale extensions:

    ```bash
    ./manage.py stale path/to/directory/of/extensions 3
    ```

You can now delete these extensions from Transifex, if the account is near its limits.

### Pretranslate all PO files

Once you have a compendium:

```fish
cd locale
for lang in (ls)
  cd $lang/LC_MESSAGES
  for i in **.po
    pretranslate --nofuzzymatching -t ../../../$lang.po ../../../build/locale/{$i}t $i
  end
  cd ../..
end
cd ..
```

### Compare different versions of PO/POT files

Change the two paths below, and change `.po` to `.pot` if appropriate:

```fish
cd path/to/locale/es
for i in **.po
  msgcmp $i relative/path/to/another/locale/es/$i
end
```
