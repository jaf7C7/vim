" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
    syntax reset
endif

let colors_name = "jfox"

set t_Co=8

" UI Colors
hi clear NonText
hi Search ctermfg=0 ctermbg=7
hi IncSearch ctermfg=3 ctermbg=0 cterm=bold,reverse
hi MatchParen ctermfg=0 ctermbg=6
hi clear Directory
hi Title ctermfg=none cterm=bold
hi PMenu ctermfg=none ctermbg=none cterm=reverse
hi PMenuSel ctermfg=none ctermbg=none cterm=bold,reverse
hi ColorColumn ctermfg=none ctermbg=none cterm=reverse
hi Question ctermfg=4 cterm=bold
hi Warning ctermfg=3 cterm=bold
hi ErrorMsg ctermfg=1 ctermbg=none cterm=bold

" Syntax Highlighting
hi Comment ctermfg=4 cterm=bold
hi Function ctermfg=2 cterm=bold
hi Class ctermfg=6 cterm=bold
hi String ctermfg=2
hi Todo ctermfg=1 ctermbg=none cterm=bold,underline
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

" Vim
hi! link vimFuncName None
hi link vimFunction Function

" Python
hi link pythonInclude Statement
hi link pythonBuiltin Keyword
autocmd FileType python
    \ call clearmatches() |
    \ call matchadd('Class', '^\s*class\s\+\zs\w\+')

" Javascript
" TODO: Iron out the bugs.
autocmd FileType javascript
    \ call clearmatches() |
    \ syntax clear javaScriptFunction |
    \ call matchadd('Function', '^\s*\(\(export\|default\)\s\+\)\?\(\(var\|let\|const\)\s\+\)\w\+\ze = (\?\w\+.*)\?\s\+=>\s\+{') |
    \ call matchadd('Function', '^\s*\(\(export\|default\)\s\+\)\?function\s\+\zs\w\+') |
    \ call matchadd('Class', '^\s*\(\(export\|default\)\s\+\)*class\s\+\zs\w\+') |
    \ call matchadd('Function', '^\s\+\zs\w\+\(if\|return\|while\|for\)\@<!\ze\(\s*(\)')
hi link javaScriptBraces None
hi link javaScriptEmbed String
hi link javaScriptType Keyword

" HTML/Markdown
hi htmlLink ctermfg=6

" Shell
autocmd FileType sh
    \ syntax match shFunction /^\s*\zs\w\+\ze\s*()/ |
    \ syntax match shStatement /while\|printf/
hi link shSnglCase None
hi link shCaseBar None
hi link shTestOpr None
hi link shQuote String
hi link vimPatSep vimSynRegPat
