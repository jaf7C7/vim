set autoindent
set backupdir=~/.config/vim/backups,.
set cursorline
set formatoptions+=j  " Remove comment leader when joining lines.
set hidden
set mouse=nvi  " Use the mouse except in command-mode.
set nohlsearch
set noincsearch
set noruler
set noshowmode
set scrolloff=1
set shiftwidth=0  " 'shiftwidth' follows 'tabstop'.
set statusline=%f\ %r%m%=%y

filetype plugin indent on

colorscheme opulence

packadd! editorconfig  " Read .editorconfig files.
packadd! comment  " Comment code with `gc{motion}`.

" Save like you expect (make sure XON/XOFF flow control is disabled).
inoremap <C-S> :w<CR>
nnoremap <C-S> :w<CR>

" Make Ctrl-Backspace delete the previous word.
inoremap <C-H> <C-W>
cnoremap <C-H> <C-W>

" Disable mousewheel/touchpad scrolling.
" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
" TODO: Sourcing this twice will keep adding unnecessary characters to the
" strings.  Protect these variables from re-sourcing.
let &t_ti = "\e[?1007l" . &t_ti
let &t_te = &t_te . "\e[?1007h"

" Change cursor shape in insert mode.
" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
" TODO: see above...
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
let &t_ti =  &t_ti . "\e[1 q"

" Highlight trailing whitespace.
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
3match Error /\s\+$/
autocmd BufWinEnter * 3match Error /\s\+$/
autocmd InsertEnter * 3match Error /\s\+\%#\@<!$/
autocmd InsertLeave * 3match Error /\s\+$/
