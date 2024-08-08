set nohlsearch
set noincsearch
set hidden
set statusline=%f\ %M\ %R%=%{&ft}\ \ %{&et==1?'spaces:'.&sw:'tabs:'.&ts}\ \ %{&ff}\ \ %{&fenc}%=%l,%v
set noshowmode
set noruler
set scrolloff=1
set autoindent
set shiftwidth=0   " 'shiftwidth' follows 'tabstop'
set cpoptions+=n   " Wrapped lines use number column (can select long lines)
set numberwidth=8  " 8-char number margin like `vi`.
set formatoptions+=j      " Remove comment leader when joining lines

packadd comment	   " Comment text with `gc{motion}` or `gcc`.
packadd matchit	   " Improve `%` behaviour.

if $TERMINAL_THEME =~ 'solarized'
	let &bg = $TERMINAL_THEME =~ 'light' ? 'light' : 'dark'
	colorscheme solarized
else
	colorscheme visualstudio
endif
