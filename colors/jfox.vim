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
hi ErrorMsg ctermfg=1 ctermbg=none
hi Search ctermfg=0 ctermbg=7
hi IncSearch ctermfg=3 ctermbg=0 cterm=bold,reverse
hi MatchParen ctermfg=0 ctermbg=6
hi clear Directory
hi Title ctermfg=none cterm=bold
hi PMenu ctermfg=none ctermbg=none cterm=reverse
hi PMenuSel ctermfg=none ctermbg=none cterm=bold,reverse

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

" Python
hi link pythonInclude Statement
hi link pythonBuiltin Keyword

" Javascript
hi link javaScriptBraces None
hi link javaScriptEmbed String
hi link javaScriptType Keyword

" HTML/Markdown
hi htmlLink ctermfg=6

" Shell
function ShSyntaxOverrides()
    syntax match shFunction /^\s*\zs\w\+\ze\s*()/
    syntax match shStatement /while\|printf/
endfunction
autocmd FileType sh call ShSyntaxOverrides()
hi link shSnglCase None
hi link shCaseBar None
hi link shTestOpr None
