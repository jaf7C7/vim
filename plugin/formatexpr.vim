function! FormatBuffer()
	if !exists('*FormatCmd')
		return
	endif
	let cursor_position = getpos('.')
	execute(FormatCmd(v:lnum, (v:lnum + v:count)))
	call setpos('.', cursor_position)
	unlet cursor_position
	if v:shell_error > 0
		echo 'Could not format'
		undo
	endif
endfunction
