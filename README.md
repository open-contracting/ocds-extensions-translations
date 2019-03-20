# OCDS Extensions Translations

To update this repository, see [these instructions on translating extensions](https://ocdsextensionregistry.readthedocs.io/en/latest/translation.html).

## Commands

### Add new extensions

Set environment variables as appropriate (using the fish shell):

```
set extensions implementationStatus releasePublisher
```

Generate POT files for the new extensions:

```
ocdsextensionregistry generate-pot-files build/locale $extensions
```

Generate empty PO files:

```
cd build/locale
for extension in $extensions
  for lang in es fr it
    for i in $extension/**.pot
      mkdir -p ../../locale/$lang/LC_MESSAGES/(dirname $i)
      msginit --no-translator --locale $lang -i $i -o ../../locale/$lang/LC_MESSAGES/(dirname $i)/(basename -s .pot $i).po
    end
  end
end
cd ../..
```

Update the `.tx/config` file:

```
sphinx-intl update-txconfig-resources --transifex-project-name ocds-extensions --pot-dir build/locale --locale-dir locale
```

Push the new source files:

```
for i in (egrep (echo $extensions | tr ' ' '|') .tx/config | grep ] | tr -d '[]')
  tx push -s -r $i
end
```

### Add new versions of core extensions

Set environment variables as appropriate (using the fish shell):

```
set old_version v1.1.3
set new_version v1.1.4
```

Generate POT files for the new versions of core extensions:

```
ocdsextensionregistry generate-pot-files build/locale bids==$new_version enquiries==$new_version location==$new_version lots==$new_version milestone_documents==$new_version participation_fee==$new_version process_title==$new_version
```

Pre-populate the PO files:

```
for extension in bids enquiries location lots milestone_documents participation_fee process_title
  for lang in es fr it
    mkdir locale/$lang/LC_MESSAGES/$extension/$new_version
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
sphinx-intl update-txconfig-resources --transifex-project-name ocds-extensions --pot-dir build/locale --locale-dir locale 
```

Push the new source files:

```
for i in (grep v1_1_4 .tx/config | tr -d '[]')
  tx push -s -r $i
end
```

Push the pre-populated translation files:

```
for i in (grep v1_1_4 .tx/config | tr -d '[]')
  tx push -t -r $i
end
```

### Populate initial translations

For posterity, the commands to initialize this repository were as follows (using the fish shell).

#### Prepare compendia from the `standard` repository

1. Change into the `standard` directory
1. Replace `path/to/working/directory`
1. Run:

```
set wip path/to/working/directory

for lang in (ls standard/docs/locale)
  for tag in (git tag | grep 1__1)
    git checkout $tag
    msgcat --use-first standard/docs/locale/$lang/**.po > $lang-$tag.po
  end
  msgcat --use-first (ls $lang-*.po | tail -r) > $wip/$lang-standard.po
  rm -f $lang-*.po
end

git checkout 1.1-italian
msgcat --use-first standard/docs/locale/it/**.po > $wip/it-standard.po

git checkout 1.1-dev
```

#### Prepare compendia from the `public-private-partnerships` repository

1. Change into the `public-private-partnerships` directory
1. Replace `path/to/working/directory`
1. Run:

```
set wip path/to/working/directory

for lang in (ls locale)
  for tag in (git tag) a99b1da1470aef95a8b0e0e15638b2bf2f2928c1 881ef0e33f6045cd9bc8a9f66c2425856b21d01b c9618931c813b874e4cc8b07237700a067f9dbea 659324007ab17b6070e241ce7aeed08722360340
    git checkout $tag
    msgcat --use-first locale/$lang/**.po > $lang-(git show -s --format=%ct $tag).po
  end
  msgcat --use-first (ls $lang-*.po | tail -r) > $wip/$lang-ppp.po
  rm -f $lang-*.po
end

git checkout 1.0-dev
```

The commit hashes correspond to versions 1.1, 1.1.1, 1.1.2, 1.1.3 of OCDS.

#### Merge the compendia in the working directory

1. Change into the working directory
1. Run:

```
for lang in es
  msgcat --use-first $lang-standard.po $lang-ppp.po > $lang.po
end

for lang in fr it
  cp $lang-standard.po $lang.po
end
```

#### Create the POT and PO files

1. Install `ocdsextensionregistry`, `sphinx-intl` and `transifex-client`:

        pip install ocdsextensionregistry[cli] 'sphinx-intl<1' transifex-client

1. Create a `~/.transifexrc` file (replace `USERNAME` and `PASSWORD`):

        sphinx-intl create-transifexrc --transifex-username USERNAME --transifex-password PASSWORD

1. Create the POT files:

        ocdsextensionregistry generate-pot-files build/locale

1. Update the `.tx/config` file:

        rm -f .tx/config
        sphinx-intl create-txconfig
        sphinx-intl update-txconfig-resources --transifex-project-name ocds-extensions --pot-dir build/locale --locale-dir locale

1. Create the PO files:

        sphinx-intl update -p build/locale -d locale -l es,fr,it

#### Pre-populate the PO files

1. Install `translate-toolkit`:

        brew install translate-toolkit

1. Install `python-Levenshtein`:

        eval (brew --prefix translate-toolkit)/libexec/bin/pip install python-Levenshtein

1. Run:

```
cd locale
for lang in (ls)
  cd $lang/LC_MESSAGES
  for f in **.po
    pretranslate --nofuzzymatching -t ../../../$lang.po ../../../build/locale/(echo $f)t $f
  end
  cd ../..
end
cd ..
```

We use `--nofuzzymatching` as fuzzy matching can produce incorrect results. We use `pretranslate` instead of `msgmerge`, as `msgmerge` merges the header entry, which produces incorrect results.

### Populate English PO files

We don't store POT files or English translations, but if we were to, we could generate the POT and PO files as above, then:

```
cd build/locale
for i in **.pot
  mkdir -p ../../locale/en/LC_MESSAGES/(dirname $i)
  msgen $i -o ../../locale/en/LC_MESSAGES/(dirname $i)/(basename -s .pot $i).po
end
```

### Compare PO files

`langdir2` must be relative to `langdir1`. Change the values, then:

```
set langdir1 path/to/locale/es
set langdir2 relative/path/to/locale/es

cd $langdir1
for i in **.po
  msgcmp $i langdir2/$i
end
```
