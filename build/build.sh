#!/bin/sh

#set -ev

if [ -d "tmp" ];then
    rm -rf tmp
fi

if [ -d "output" ];then
    rm -rf output
fi

mkdir tmp
mkdir output
cp -arf ../book/* tmp/
cp -arf ../script/* tmp/

cd tmp

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"

if [ -d "_book" ];then
	echo "build success."
fi

cd ..
cp -arf tmp/_book/* output/
rm -rf tmp
