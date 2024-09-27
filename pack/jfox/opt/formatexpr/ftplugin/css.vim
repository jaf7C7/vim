function! FormatCmd(start_line, end_line)
	return '%!prettier --range-start ' . a:start_line . ' --range-end ' . a:end_line . ' --stdin-filepath foo.css'
endfunction

set formatexpr=FormatBuffer()
