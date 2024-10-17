# Instructions

## Installing typst

On a macOS machine, type

```sh
brew install typst
```

to install typst. This assumes that you have 'homebrew' installed.  If not,
please consult the typst webpage for other ways to install typst.

## Setting up the memo template

Do as follows (for version 0.0.2; change that sequence for later versions).

```sh
mkdir -p ~/Library/Application\ Support/typst/packages/local/memo/0.0.1
cp 0.0.1/* ~/Library/Application\ Support/typst/packages/local/memo/0.0.1
```

## A sample file

To see how this works, take a look at the included sample file,
named `sample_memo.typ`.  Then try compiling it, by typing
```sh
typst compile sample_memo.typ
```
and you'll get a PDF file, as is included in this subdirectory
of this repository.
