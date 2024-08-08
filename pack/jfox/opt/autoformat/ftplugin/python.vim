" Set 'formatprg' for python files and set up format-on-save.

if executable('black')
	let &formatprg = 'black -qS -'
	autocmd BufWritePre <buffer> call FormatBuffer()
endif
