set autoindent
set cpoptions+=n  " Wrapped lines use number column
set formatoptions+=j  " Remove comment leader when joining lines.
set hidden
set nohlsearch
set noincsearch
set noruler
set noshowmode
set scrolloff=1
set shiftwidth=0  " 'shiftwidth' follows 'tabstop'
set statusline=%f\ %M\ %R%=%{&ft}\ \ %{&et==1?'spaces:'.&sw:'tabs:'.&ts}\ \ %{&ff}\ \ %{&fenc}%=%l,%v

packadd! comment  " Comment text with `gc{motion}` or `gcc`.
packadd! matchit  " Improve `%` behaviour.
packadd! editorconfig  " See: https://editorconfig.org/
packadd! trailingspace  " Highlight trailing whitespace as an error.
packadd! synstack  " Get syntax group under cursor with `gs`.
packadd! ctrlbackspace  " Make Ctrl-Backspace delete the previous word.
packadd! noscroll  " Disable terminal scrolling when in vim.
"packadd! autoformat  " Format on save with 'formatprg' (if set).

if $TERMINAL_THEME =~ 'solarized'
	let &bg = $TERMINAL_THEME =~ 'light' ? 'light' : 'dark'
	colorscheme solarized
else
	colorscheme visualstudio
endif
