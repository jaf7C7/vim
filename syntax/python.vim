" Custom python syntax file
" Adapted and simplified from /usr/share/vim/vim91/syntax/python.vim
"
" See: https://vimhelp.org/usr_44.txt.html
"      https://vimhelp.org/syntax.txt.html

let b:current_syntax = 'python'

syn match pythonComment '#.*$' contains=pythonTODO
syn keyword pythonTodo TODO DEBUG XXX contained
syn region pythonString
    \ start=/[frbu]\?\z(['"]\)/ end=/\z1/ skip=/\\\\\|\\\z1/
    \ contains=CONTAINED
syn region pythonString
    \ start=/[frbu]\?\z(['"]\{3}\)/ end=/\z1/ skip=/\\\\\|\\\z1/
    \ contains=CONTAINED
syn match pythonClass /\(^\|;\)\s*class\s\+\zs\h\w\+/
syn match pythonFunction /\(^\|;\)\s*def\s\+\zs\h\w\+/

hi def link pythonComment Comment
hi def link pythonTodo Todo
hi def link pythonString String
hi def link pythonClass Class
hi def link pythonFunction Function
