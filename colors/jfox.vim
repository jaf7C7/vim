" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" TODO: Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "jfox"

" UI Colors
hi clear NonText
hi ErrorMsg ctermfg=1 ctermbg=none
hi MatchParen ctermbg=4
hi clear Directory
hi Title ctermfg=none cterm=bold

" Syntax Highlighting
hi Statement ctermfg=4 cterm=bold
hi clear Type
hi clear Identifier
hi String ctermfg=2
hi clear Number
hi clear PreProc
hi clear Delimiter
hi Comment ctermfg=6
hi Function ctermfg=none cterm=bold
hi clear Error
hi clear Special
hi Todo ctermfg=6 ctermbg=none cterm=bold,reverse
hi clear Operator
hi clear Constant

" Language Specific
hi link pythonInclude Statement
hi link pythonBuiltin Keyword
hi link javaScriptBraces None
hi link javaScriptEmbed String
hi link javaScriptType Keyword
