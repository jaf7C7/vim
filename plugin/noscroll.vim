" noscroll.vim : Disable mousewheel/touchpad scrolling in vim

" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
let &t_ti = "\e[?1007l" . &t_ti
let &t_te = &t_te . "\e[?1007h"
