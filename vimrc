set autoindent
set backupdir=~/.config/vim/backups,.
"set cursorline  " Highlight current line.
set formatoptions+=j  " Remove comment leader when joining lines.
set hidden
set mouse=n  " Allow mouse only in normal mode.
set nohlsearch
set noincsearch
set noruler
set noshowmode
set statusline=%f\ %y%r%m
set scrolloff=1
set shiftwidth=0  " 'shiftwidth' follows 'tabstop'.
set shortmess=aoOsTcC
filetype plugin indent on

if $TERMINAL_THEME == 'solarized'
	colorscheme solarized
else
	colorscheme opulence
endif

packadd! editorconfig  " Read .editorconfig files.
packadd! comment  " Comment code with `gc{motion}`.

" Easier scrolling through buffers.
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

" Make Ctrl-Backspace delete the previous word.
inoremap <C-H> <C-W>
cnoremap <C-H> <C-W>

" Disable `alternateScroll` while in vim, re-enable on exit.
" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
let &t_ti = (&t_ti =~ "\e[?1007l") ? &t_ti : "\e[?1007l" . &t_ti
let &t_te = (&t_te =~ "\e[?1007h") ? &t_te : &t_te . "\e[?1007h"

" Change cursor shape depending on mode.
" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
let &t_ti = (&t_ti =~ "\e[1 q") ? &t_ti : &t_ti . "\e[1 q"

" Highlight trailing whitespace.
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
3match Error /\s\+$/
autocmd BufWinEnter * 3match Error /\s\+$/
autocmd InsertEnter * 3match Error /\s\+\%#\@<!$/
autocmd InsertLeave * 3match Error /\s\+$/
