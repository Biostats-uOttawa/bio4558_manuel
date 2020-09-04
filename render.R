#!/usr/bin/env Rscript

bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
bookdown::render_book("index.Rmd", 'bookdown::epub_book')
bookdown::calibre('docs/Labo_BIO4558.epub', 'mobi')

bookdown::preview_chapter("06-anova_mult.Rmd", output_dir = "docs/preview")
#bookdown::preview_chapter("06-anova_mult.Rmd", output_format = 'bookdown::html_chapters', output_dir = "docs/preview")

bookdown::preview_chapter("10-notebook.Rmd", output_dir = "docs/preview")
