#!/bin/sh

#set -e

#[ -z "${GITHUB_PAT}" ] && exit 0
#[ "${TRAVIS_BRANCH}" != "master" ] && exit 0

#git config --global user.email "xie@yihui.name"
#git config --global user.name "Yihui Xie"

if [ ! -d "output" ];then
    echo "Exec build.sh Script First."
	exit 0
fi

git clone -b gh-pages git@github.com:iotctech/deeplearning.git git-pages
cd git-pages
cp -r ../output/* ./
rm -rf *.md
git add --all *
git commit -m"Update the book" || true
git push -q origin gh-pages
