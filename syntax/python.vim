" Custom python syntax file
" Adapted and simplified from /usr/share/vim/vim91/syntax/python.vim
"
" See: https://vimhelp.org/usr_44.txt.html
"      https://vimhelp.org/syntax.txt.html

if exists('b:current_syntax')
    finish
endif

let b:current_syntax = 'python'

" XXX: This may be slow for very large files
syntax sync fromstart

syn match pythonComment '#.*$' contains=pythonTODO
syn keyword pythonTodo TODO DEBUG XXX contained
syn region pythonString
    \ start=/[frbu]\?\z(['"]\)/ end=/\z1/ skip=/\\\\\|\\\z1/
    \ contains=CONTAINED
syn region pythonString
    \ start=/[frbu]\?\z(['"]\{3}\)/ end=/\z1/ skip=/\\\\\|\\\z1/
    \ contains=CONTAINED
syn match pythonClass /\(^\|;\)\s*class\s\+\zs\h\w\+/
syn match pythonFunction /\(^\|;\)\s*\(async\s\+\)\?\s*def\s\+\zs\h\w\+/
syn match pythonParen /[][(){}]/
syn match pythonDecorator /\(^\|;\)\s*\zs@\ze\w\+/

hi def link pythonComment Comment
hi def link pythonTodo Todo
hi def link pythonSingleQuoteString String
hi def link pythonDoubleQuoteString String
hi def link pythonClass Class
hi def link pythonFunction Function
hi pythonParen ctermfg=15
hi pythonDecorator ctermfg=10
