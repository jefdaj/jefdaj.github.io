#!/usr/bin/env bash

# Based on https://jaspervdj.be/hakyll/tutorials/github-pages-tutorial.html

set -x

# Make sure to start in the right dir
cd "$( dirname "${BASH_SOURCE[0]}" )"

# Temporarily store uncommited changes
git stash

# Verify correct branch
git checkout develop

# Build new files
pushd src
stack build
stack exec codeisland clean
stack exec codeisland build
popd

# Get previous files
# git fetch --all
# git checkout -b master --track github/master
git checkout master

# Overwrite existing files with new files
rsync -a \
  --filter='P .git/' \
  --filter='P .gitignore' \
  --filter='P .site/' \
  --filter='P src/' \
  --filter='P LICENSE' \
  --delete-excluded \
  .site/ .

# Commit
git add -A
git commit -m "update site with publish.sh"

# TODO remove this
# clear && git diff HEAD^

# Push
# git push github master:master

# Restoration
git checkout develop
# git branch -D master
git stash pop