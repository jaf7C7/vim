function! FormatBuffer()
	let cursor_position = getpos('.')
	execute(FormatExpr(v:lnum, (v:lnum + v:count)))
	call setpos('.', cursor_position)
	unlet cursor_position
	if v:shell_error > 0
		echo 'Could not format with "' . &formatprg . '"'
		undo
	endif
endfunction

set formatexpr=FormatBuffer()
