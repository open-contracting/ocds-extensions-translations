# OCDS Extensions Translations

To update this repository, see [these instructions on translating extensions](https://ocdsextensionregistry.readthedocs.io/en/latest/translation.html).

## Commands

### Setup

To pre-populate PO files:

1. Install `translate-toolkit`:

        brew install translate-toolkit

1. Install `python-Levenshtein`:

        eval (brew --prefix translate-toolkit)/libexec/bin/pip install python-Levenshtein

### Add new extensions

To determine what extensions to add, compare the first column of [extensions.csv](https://github.com/open-contracting/extension_registry/raw/main/extensions.csv) to `ls -1 locale/es/LC_MESSAGES`.

Set environment variables as appropriate (using the fish shell):

```
set extensions implementationStatus releasePublisher
```

Generate POT files for the new extensions:

```
ocdsextensionregistry generate-pot-files build/locale $extensions
```

Prepare compendia from existing extensions:

```
for lang in (ls locale)
  msgcat --use-first (ls locale/$lang/**.po | tail -r) > $lang.po
end
```

Generate empty PO files:

```
cd build/locale
for extension in $extensions
  for lang in es
    for i in $extension/**.pot
      mkdir -p ../../locale/$lang/LC_MESSAGES/(dirname $i)
      msginit --no-translator --locale $lang -i $i -o ../../locale/$lang/LC_MESSAGES/(dirname $i)/(basename -s .pot $i).po
    end
  end
end
cd ../..
```

Pre-populate the PO files:

```
cd locale
for extension in $extensions
  for lang in (ls)
    cd $lang/LC_MESSAGES
    for i in $extension/**.po
      pretranslate --nofuzzymatching -t ../../../$lang.po ../../../build/locale/{$i}t $i
    end
    cd ../..
  end
end
cd ..
```

Note: If this step had previously been skipped, you can remove the `$extensions` for-loop and `$extensions/` path to pretranslate everything.

Update the `.tx/config` file:

```
sphinx-intl update-txconfig-resources --transifex-organization-name open-contracting-partnership-1 --transifex-project-name ocds-extensions --pot-dir build/locale --locale-dir locale
```

Push the new source files:

```
for i in (egrep (echo $extensions | tr ' ' '|') .tx/config | grep ] | tr -d '[]')
  tx push -s $i
end
```

### Add new versions of core extensions

Set environment variables as appropriate (using the fish shell):

```
set old_version v1.1.3
set new_version v1.1.4
set new_version_underscored v1_1_4
```

Generate POT files for the new versions of core extensions:

```
ocdsextensionregistry generate-pot-files build/locale bids==$new_version enquiries==$new_version location==$new_version lots==$new_version milestone_documents==$new_version participation_fee==$new_version process_title==$new_version
```

Pre-populate the PO files:

```
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

```
sphinx-intl update-txconfig-resources --transifex-organization-name open-contracting-partnership-1 --transifex-project-name ocds-extensions --pot-dir build/locale --locale-dir locale 
```

Push the new source files:

```
for i in (grep $new_version_underscored .tx/config | tr -d '[]')
  tx push -s $i
end
```

Push the pre-populated translation files:

```
for i in (grep $new_version_underscored .tx/config | tr -d '[]')
  tx push -f -t $i
end
```

## Compare different versions of PO/POT files

Change the two paths below, and change `.po` to `.pot` if appropriate:

```
cd path/to/locale/es
for i in **.po
  msgcmp $i relative/path/to/another/locale/es/$i
end
```
