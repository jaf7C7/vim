set autoindent
set backspace=""
set backupdir=~/.config/vim/backups,.
set formatoptions+=j  " Remove comment leader when joining lines.
set hidden
set nohlsearch
set noincsearch
set noruler
set cursorline
set noshowmode
set scrolloff=1
set shiftwidth=0  " 'shiftwidth' follows 'tabstop'
set undolevels=0  " Golf mode.

packadd! comment  " Comment text with `gc{motion}` or `gcc`.
packadd! editorconfig  " See: https://editorconfig.org/
packadd! matchit  " Improve `%` behaviour.

colorscheme visualstudio
