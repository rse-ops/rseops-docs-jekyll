#!/bin/sh
# Tag and push a release.

set -e

# Make sure we're in the project root.

cd $(dirname "$0")/..

# Make sure the darn thing works

bundle update

# Build a new gem archive.

rm -rf radiuss-docs-jekyll-*.gem
gem build -q radiuss-docs-jekyll.gemspec

# Make sure we're on the main branch.

(git branch | grep -q 'main') || {
  echo "Only release from the main branch."
  exit 1
}

# Figure out what version we're releasing.

tag=v`ls radiuss-docs-jekyll-*.gem | sed 's/^radiuss-docs-jekyll-\(.*\)\.gem$/\1/'`

# Make sure we haven't released this version before.

git fetch -t origin

(git tag -l | grep -q "$tag") && {
  echo "Whoops, there's already a '${tag}' tag."
  exit 1
}

# Tag it and bag it.

gem push radiuss-docs-jekyll-*.gem && git tag "$tag" &&
  git push origin main && git push origin "$tag"
