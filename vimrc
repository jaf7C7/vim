" TODO: Get byte offset of a given line + column position.
" For use in 'formatexpr' to save and restore cursor position when formatting,
" or to format only a section of the buffer, specified by a range of
" byte-offsets (e.g. with `prettier`)
" Look at: `:h line2byte()`, `:h col()`

set autoindent
set backupdir=~/.config/vim/backups,.
set formatoptions+=j  " Remove comment leader when joining lines.
set hidden
set mouse=nv  " Allow mouse only in normal and visual modes.
set nohlsearch
set noincsearch
set noruler
set noshowmode
set statusline=%f\ %r%m%=%y
set scrolloff=0
set shiftwidth=0  " 'shiftwidth' follows 'tabstop'.
set shortmess=aoOsTcC
set wildmode=longest,list

filetype plugin indent on

autocmd FileType html,css,javascript set ts=2 et
autocmd FileType vim,sh,bash,zsh,python set ts=4 et

packadd! editorconfig  " Read .editorconfig files.
packadd! comment  " Comment code with `gc{motion}`.

if $TERMINAL_THEME == 'solarized'
    colorscheme solarized
elseif $TERMINAL_THEME == 'visual-studio'
    colorscheme opulence
else
    colorscheme mono
endif

" Highlight trailing whitespace.
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
3match Error /\s\+$/
autocmd BufWinEnter * 3match Error /\s\+$/
autocmd InsertEnter * 3match Error /\s\+\%#\@<!$/
autocmd InsertLeave * 3match Error /\s\+$/

" Emulate readline tab completion.
" https://medium.com/@sszreter/vim-tab-autocomplete-in-insert-mode-and-fuzzy-search-for-opening-files-484260f52618
function! InsertTabWrapper()
    let col = col('.') - 1
    " If the cursor is at the start of the line or the char behind the cursor is
    " not a keyword character.
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<Tab>"
    else
        return "\<C-P>"
    endif
endfunction
inoremap <expr> <Tab> InsertTabWrapper()
set completeopt=longest

" Make Ctrl-Backspace delete the previous word.
inoremap <C-H> <C-W>
cnoremap <C-H> <C-W>

function! s:TmuxPassthrough(str)
    return "\ePtmux;" . substitute(a:str, "\e", "\e\e", "g") . "\e\\"
endfunction

function! s:AppendIfNotContains(str, target)
    if a:target !~ a:str
        return a:target . a:str
    endif
    return a:target
endfunction

" Disable `alternateScroll` while in vim, re-enable on exit.
" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
let s:disable_altscroll = "\e[?1007l"
let s:enable_altscroll = "\e[?1007h"
if &term =~ 'tmux'
    let s:disable_altscroll = s:TmuxPassthrough(s:disable_altscroll)
    let s:enable_altscroll = s:TmuxPassthrough(s:enable_altscroll)
endif
let &t_ti = s:AppendIfNotContains(s:disable_altscroll, &t_ti)
let &t_te = s:AppendIfNotContains(s:enable_altscroll, &t_te)

" Change cursor shape depending on mode, set bar cursor on exit.
" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
let s:bar_cursor = "\e[5 q"
let s:block_cursor = "\e[1 q"
let &t_SI = s:bar_cursor
let &t_EI = s:block_cursor
let &t_ti = s:AppendIfNotContains(s:block_cursor, &t_ti)
