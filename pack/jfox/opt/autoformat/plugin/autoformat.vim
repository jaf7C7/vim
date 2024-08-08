" autoformat.vim : Format the buffer using 'formatprg' and restore cursor
"                  position.
"
" E.g. for python, in ./ftplugin/python.vim:
"
" 	let &formatprg = 'black -qS -'
" 	autocmd BufWritePre <buffer> call FormatBuffer()
"

if exists('g:loaded_autoformat')
	finish
endif

let g:loaded_autoformat = 1

function! FormatBuffer()
	if &formatprg == ''
		return
	endif
	let cursor_position = getpos('.')
	normal! 1GgqG
	call setpos('.', cursor_position)
	unlet cursor_position
	if v:shell_error > 0
		echo 'Could not format with "' . &formatprg . '"'
		undo
	endif
endfunction
