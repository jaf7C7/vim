hi clear
let g:colors_name = 'vscode'

hi clear SpecialKey
hi clear EndOfBuffer
hi clear NonText
hi clear Directory
hi clear ErrorMsg
hi clear IncSearch
hi clear Search
hi clear CurSearch
hi clear MoreMsg
hi clear ModeMsg
hi clear LineNr
hi clear LineNrAbove
hi clear LineNrBelow
hi clear CursorLineNr
hi clear CursorLineSign
hi clear CursorLineFold
hi clear Question
hi clear StatusLine
hi clear StatusLineNC
hi clear VertSplit
hi clear Title
hi clear Visual
hi clear VisualNOS
hi clear WarningMsg
hi clear WildMenu
hi clear Folded
hi clear FoldColumn
hi clear DiffAdd
hi clear DiffChange
hi clear DiffDelete
hi clear DiffText
hi clear SignColumn
hi clear Conceal
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal
hi clear Pmenu
hi clear PmenuSel
hi clear PmenuMatch
hi clear PmenuMatchSel
hi clear PmenuKind
hi clear PmenuKindSel
hi clear PmenuExtra
hi clear PmenuExtraSel
hi clear PmenuSbar
hi clear PmenuThumb
hi clear TabLine
hi clear TabLineSel
hi clear TabLineFill
hi clear CursorColumn
hi clear CursorLine
hi clear ColorColumn
hi clear QuickFixLine
hi clear StatusLineTerm
hi clear StatusLineTermNC
hi clear MsgArea
hi clear Normal
hi clear MatchParen
hi clear ToolbarLine
hi clear ToolbarButton
hi clear Comment
hi clear Constant
hi clear Special
hi clear Identifier
hi clear Statement
hi clear PreProc
hi clear Type
hi clear Underlined
hi clear Ignore
hi clear Added
hi clear Changed
hi clear Removed
hi clear Error
hi clear Todo

hi Search cterm=reverse
hi IncSearch cterm=reverse,bold,underline
hi MatchParen cterm=underline
hi MoreMsg cterm=reverse
hi ErrorMsg cterm=reverse
hi PMenuSel cterm=reverse
hi Visual cterm=reverse
hi SpecialKey cterm=reverse
hi StatusLine cterm=reverse
hi StatusLineNC cterm=reverse
hi Todo ctermfg=1 ctermbg=none cterm=bold

if &bg == 'light'
	hi ColorColumn ctermbg=255
	hi Error ctermbg=255
	hi PMenu ctermfg=8 ctermbg=255
elseif &bg == 'dark'
	hi ColorColumn ctermbg=233
	hi Error ctermbg=233
	hi PMenu ctermfg=7 ctermbg=233
endif

hi Statement ctermfg=21
hi Comment ctermfg=28
hi Number ctermfg=28
hi String ctermfg=124

hi! def link javaScriptFunction Statement
hi! def link javaScriptBraces None
hi! def link javaScriptBoolean Keyword

hi! def link pythonInclude Keyword
