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

colorscheme jfox

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
