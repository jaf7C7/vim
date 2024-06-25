" Custom javaScript syntax file
" Adapted and simplified from /usr/share/vim/vim91/syntax/javascript.vim
"
" See: https://vimhelp.org/usr_44.txt.html
"      https://vimhelp.org/syntax.txt.html

if exists('b:current_syntax')
    finish
endif

let b:current_syntax = 'javaScript'

" XXX: This may be slow for very large files.
syntax sync fromstart

syn match javaScriptComment '\/\/.*$' contains=CONTAINED,javaScriptTODO
syn region javaScriptComment start='\/\*\*\?' end='\*\/$' contains=CONTAINED,javaScriptTODO
syn keyword javaScriptTodo TODO DEBUG XXX contained
syn region javaScriptString
    \ start=/\z(['"`]\)/ end=/\z1/ skip=/\\\\\|\\\z1/
    \ contains=CONTAINED
syn match javaScriptFunction
    \ /\(^\|;\)\s*\(\(export\|default\)\s\+\)*\(\(var\|let\|const\)\s\+\)\zs\w\+\ze\s\+=\s\+\(\w\+\|(\(\w\+\(\s\+=\s\+.*\)\?\(,\s\+\)\?\)*)\|({\_[^}]*})\)\s\+=>/
syn match javaScriptFunction  /\(^\|;\)\s*\(\(export\|default\)\s\+\)*function\s\+\zs\w\+/
syn match javaScriptClass /^\s*\(\(export\|default\)\s\+\)*class\s\+\zs\w\+/
" XXX: This could be buggy
syn match javaScriptMethod
    \ /^\s\+\(static\s\+\)\?\zs\w\+\(if\|return\|while\|for\|switch\)\@<!\ze\(\s*(.*)\s*{\)/


hi def link javaScriptComment Comment
hi def link javaScriptTodo Todo
hi def link javaScriptString String
hi def link javaScriptFunction Function
hi def link javaScriptClass Class
hi def link javaScriptMethod Function
