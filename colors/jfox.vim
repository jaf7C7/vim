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
hi ColorColumn ctermfg=7 ctermbg=4 cterm=bold
hi Question ctermfg=4 cterm=bold
hi WarningMsg ctermfg=3 cterm=bold
hi ErrorMsg ctermfg=1 ctermbg=none cterm=bold
hi SpecialKey ctermfg=1 cterm=none


" Syntax Highlighting
hi Comment ctermfg=4 cterm=bold
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

" Vim
hi! link vimFuncName None
hi link vimFunction Function
hi link vimPatSep vimSynRegPat
hi helpHyperTextJump ctermfg=6


" Python
hi link pythonInclude Statement
hi link pythonBuiltin Keyword
hi link pythonClass Class
hi pythonDecoratorName ctermfg=6
autocmd FileType python call AddPythonHighlighting()

function! AddPythonHighlighting()
    if exists('b:custom_syntax_highlights')
        return
    endif
    let b:custom_syntax_highlights = []
    let b:custom_syntax_highlights += [matchadd('pythonClass', '^\s*class\s\+\zs\w\+')]
endfunction


" Javascript
hi link javaScriptBraces None
hi link javaScriptEmbed String
hi link javaScriptType Keyword
hi link javaScriptMethod Function
hi link javaScriptClass Class
hi link javaScriptArrowFunction Function
hi link javaScriptFunction Function
autocmd FileType javascript call AddJavaScriptHighlighting()

function! AddJavaScriptHighlighting()
    syntax clear javaScriptFunction
    if exists('b:custom_syntax_highlights')
        return
    endif
    let b:custom_syntax_highlights = []
    let b:custom_syntax_highlights += [matchadd('javaScriptFunction', '^\s*\(\(export\|default\)\s\+\)*function\s\+\zs\w\+')]
    let b:custom_syntax_highlights += [matchadd('javaScriptClass', '^\s*\(\(export\|default\)\s\+\)*class\s\+\zs\w\+')]
    let b:custom_syntax_highlights += [matchadd('javaScriptMethod', '^\s\+\(static\s\+\)\?\zs\w\+\(if\|return\|while\|for\|switch\)\@<!\ze\(\s*(.*)\s*{\)')]
    let b:custom_syntax_highlights += [matchadd('javaScriptArrowFunction', '^\s*\(\(export\|default\)\s\+\)*\(\(var\|let\|const\)\s\+\)\zs\w\+\ze\s\+=\s\+\(\w\+\|(\(\w\+\(\s\+=\s\+.*\)\?\(,\s\+\)\?\)*)\|({\_[^}]*})\)\s\+=>')]
endfunction


" HTML/Markdown
hi htmlLink ctermfg=6


" Shell
hi link shSnglCase None
hi link shCaseBar None
hi link shTestOpr None
hi link shQuote String
autocmd FileType sh call AddShellHighlighting()

function! AddShellHighlighting()
    syntax clear shFunctionKey
    syntax clear shFunctionOne
    syntax match shFunction /\(^\|&&\|||\|[&;]\)\s*\(function\s\+\)\?\zs\w\+\ze\s*()/
    syntax match shStatement /printf/
    syntax match shStatement /^\s\+\zs\(for\|while\|done\|do\)/
endfunction
