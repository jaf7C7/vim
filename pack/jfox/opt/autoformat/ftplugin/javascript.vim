" Set 'formatprg' for javascript files and set up format-on-save.

if executable('prettier')
	let &formatprg = 'prettier --stdin-filepath ' . expand('%')
	autocmd BufWritePre <buffer> call FormatBuffer()
endif
