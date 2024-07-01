" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists('syntax_on')
    syntax reset
endif


let colors_name = 'jfox'


" UI Colors
hi clear NonText
hi Search ctermfg=0 ctermbg=7
hi IncSearch ctermfg=3 ctermbg=0 cterm=bold,reverse
hi MatchParen ctermfg=0 ctermbg=6
hi clear Directory
hi Title ctermfg=none cterm=bold
hi PMenu ctermfg=none ctermbg=none cterm=reverse
hi PMenuSel ctermfg=4 ctermbg=none cterm=bold,reverse
hi ColorColumn ctermfg=none ctermbg=8 cterm=bold
hi Question ctermfg=4 cterm=bold
hi WarningMsg ctermfg=3 cterm=bold
hi ErrorMsg ctermfg=1 ctermbg=none cterm=bold
hi SpecialKey ctermfg=1 cterm=none
hi LineNr ctermfg=8


" Syntax Highlighting
hi Comment ctermfg=12 cterm=none
hi Function ctermfg=2 cterm=bold
hi Class ctermfg=6 cterm=bold
hi String ctermfg=2
hi Todo ctermfg=1 ctermbg=none cterm=bold
hi Ignore ctermfg=0 ctermbg=0
hi clear Statement
hi clear Type
hi clear Identifier
hi clear Number
hi clear PreProc
hi clear Delimiter
hi clear Error
hi clear Special
hi clear Operator
hi clear Constant
hi TrailingSpace ctermfg=1 cterm=bold,underline
au InsertEnter * match TrailingSpace /\s\+\%#\@<!$/
au InsertLeave * match TrailingSpace /\s\+$/
