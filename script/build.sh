#!/bin/sh

set -e

gem install html-proofer
bundle exec jekyll build
bundle exec htmlproofer ./_site --check-html --check-sri --url-ignore '/fonts.gstatic.com/'
bundle exec script/validate-html
gem build radiuss-docs-jekyll.gemspec
