set autoindent
set backspace=""
set backupdir=~/.config/vim/backups,.
set cursorline
set formatoptions+=j  " Remove comment leader when joining lines.
set hidden
set nohlsearch
set noincsearch
set noruler
set noshowmode
set scrolloff=1
set shiftwidth=0  " 'shiftwidth' follows 'tabstop'
set undolevels=0  " Golf mode.
set mouse=nv  " Use mouse in normal and visual modes

packadd! editorconfig  " Read .editorconfig files
packadd! comment  " Comment code with `gc{motion}`

colorscheme jfox

" Change cursor shape in insert mode
"   0  -> blinking block.
"   1  -> blinking block (default).
"   2  -> steady block.
"   3  -> blinking underline.
"   4  -> steady underline.
"   5  -> blinking bar (xterm).
"   6  -> steady bar (xterm).
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" Make Ctrl-Backspace delete the previous word.
inoremap <C-H> <C-W>
cnoremap <C-H> <C-W>

" Disable mousewheel/touchpad scrolling in vim
" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
let &t_ti = "\e[?1007l" . &t_ti
let &t_te = &t_te . "\e[?1007h"

" Highlight trailing whitespace
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
3match Error /\s\+$/
autocmd BufWinEnter * 3match Error /\s\+$/
autocmd InsertEnter * 3match Error /\s\+\%#\@<!$/
autocmd InsertLeave * 3match Error /\s\+$/
