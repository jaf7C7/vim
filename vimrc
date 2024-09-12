set autoindent
set backspace=""
set backupdir=~/.config/vim/backups,.
"set colorcolumn=81
set formatoptions+=j  " Remove comment leader when joining lines.
set hidden
set nohlsearch
set noincsearch
set noruler
set noshowmode
set scrolloff=1
set shiftwidth=0  " 'shiftwidth' follows 'tabstop'
set textwidth=79
set undolevels=0  " Golf mode.

packadd! comment  " Comment text with `gc{motion}` or `gcc`.
packadd! ctrlbackspace  " Make Ctrl-Backspace delete the previous word.
packadd! editorconfig  " See: https://editorconfig.org/
packadd! formatexpr  " Save and restore cursor position when formatting with `gq`
packadd! matchit  " Improve `%` behaviour.
"packadd! noscroll  " Stop mouse scrolling moving the cursor.
packadd! synstack  " Get syntax group under cursor with `gs`.
packadd! trailingspace  " Highlight trailing whitespace as an error.

if $TERMINAL_THEME =~ 'solarized'
	let &bg = $TERMINAL_THEME =~ 'light' ? 'light' : 'dark'
	colorscheme solarized
else
	colorscheme visualstudio
endif
