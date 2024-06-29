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

" Triple-quoted strings can contain doctests.
syn region pythonString
    \ start=/\z(['"]\)/ end=/\z1/ skip=/\\\\\|\\\z1/
    \ contains=CONTAINED
syn region pythonTripleQuoteString
    \ start=/\z('''\|"""\)/ end=/\z1/ keepend
    \ contains=CONTAINED
syn match pythonClass /\(^\|;\)\s*class\s\+\zs\h\w\+/
syn match pythonFunction /\(^\|;\)\s*\(async\s\+\)\?\s*def\s\+\zs\h\w\+/
syn match pythonParen /[][(){}]/
syn match pythonDecorator /\(^\|;\)\s*\zs@\ze\w\+/

hi def link pythonComment Comment
hi def link pythonTodo Todo
hi def link pythonString String
hi def link pythonTripleQuoteString String
hi def link pythonClass Class
hi def link pythonFunction Function
hi pythonParen ctermfg=15
hi pythonDecorator ctermfg=10
