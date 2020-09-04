#!/bin/sh

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown:::epub_book')"
Rscript -e "bookdown::calibre('docs/Labo_BIO4558.epub', 'mobi')"
