# Legacy Documentation

## Populate initial translations

For posterity, the commands to initialize this repository were as follows (using the fish shell).

### Prepare a compendium from the `standard` repository

1. Change to the `standard` directory
1. Replace `path/to/working/directory`
1. Run:

```
set wip path/to/working/directory

for lang in (ls docs/locale)
  for tag in (git tag | grep 1__1)
    git checkout $tag
    msgcat --use-first docs/locale/$lang/**.po > $lang-$tag.po
  end
  msgcat --use-first (ls $lang-*.po | tail -r) > $wip/$lang-standard.po
  rm -f $lang-*.po
end

git checkout 1.1-dev
```

### Prepare a compendium from the `public-private-partnerships` repository

1. Change to the `public-private-partnerships` directory
1. Replace `path/to/working/directory`
1. Run:

```
set wip path/to/working/directory

for lang in (ls docs/locale)
  for tag in (git tag) a99b1da1470aef95a8b0e0e15638b2bf2f2928c1 881ef0e33f6045cd9bc8a9f66c2425856b21d01b c9618931c813b874e4cc8b07237700a067f9dbea 659324007ab17b6070e241ce7aeed08722360340
    git checkout $tag
    msgcat --use-first docs/locale/$lang/**.po > $lang-(git show -s --format=%ct $tag).po
  end
  msgcat --use-first (ls $lang-*.po | tail -r) > $wip/$lang-ppp.po
  rm -f $lang-*.po
end

git checkout 1.0-dev
```

The commit hashes correspond to versions 1.1, 1.1.1, 1.1.2, 1.1.3 of OCDS.

### Merge the compendia in the working directory

1. Change to the working directory
1. Run:

```
for lang in es
  msgcat --use-first $lang-standard.po $lang-ppp.po > $lang.po
end

for lang in fr it
  cp $lang-standard.po $lang.po
end
```

### Create the POT and PO files

1. Do [Setup](https://ocdsextensionregistry.readthedocs.io/en/latest/translation.html#setup) steps

1. Do the [Create new translations](https://ocdsextensionregistry.readthedocs.io/en/latest/translation.html#create-new-translations) steps, stopping before "Push source files to Transifex for translation".

1. Create the PO files:

        sphinx-intl update -p build/locale -d locale -l es,fr,it

### Pre-populate the PO files

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
    pretranslate --nofuzzymatching -t ../../../$lang.po ../../../build/locale/{$f}t $f
  end
  cd ../..
end
cd ..
```

We use `--nofuzzymatching` as fuzzy matching can produce incorrect results. We use `pretranslate` instead of `msgmerge`, as `msgmerge` merges the header entry, which produces incorrect results.

## Populate English PO files

We don't store POT files or English translations, but if we were to, we could generate the POT and PO files as above, then:

```
cd build/locale
for f in **.pot
  mkdir -p ../../locale/en/LC_MESSAGES/(dirname $f)
  msgen $f -o ../../locale/en/LC_MESSAGES/(dirname $f)/(basename -s .pot $f).po
end
```
