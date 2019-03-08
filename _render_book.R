
bookdown::render_book('index.Rmd', output_format = "bookdown::gitbook")
bookdown::render_book('index.rmd', output_format = 'bookdown::pdf_book')
bookdown::render_book('index.rmd', output_format = 'bookdown::epub_book')


unlink('docs', recursive = TRUE)
dir.create('docs')
file.copy(list.files('_book', full.names = TRUE), 'docs', recursive = TRUE)
