#!/bin/sh

git checkout -b gh-pages
git rm --cached -r .
git clean -f -d

git commit --allow-empty -m "init gh-pages branch"
git push origin gh-pages
git checkout gh-pages
