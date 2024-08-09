function! FormatCmd(start_line, end_line)
	return '%!black --quiet --line-ranges ' . a:start_line . '-' . a:end_line . ' -'
endfunction

set formatexpr=FormatBuffer()
