" noscroll.vim : Disable mousewheel/touchpad scrolling in vim

if exists('g:loaded_noscroll')
	finish
endif

let g:loaded_noscroll = 1

" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
let &t_ti = "\e[?1007l" . &t_ti
let &t_te = &t_te . "\e[?1007h"
