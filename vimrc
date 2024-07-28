set nohlsearch
set noincsearch
set colorcolumn=81
set hidden
set statusline=%f\ %M\ %R%=%{&ft}\ \ %{&et==1?'spaces:'.&sw:'tabs:'.&ts}\ \ %{&ff}\ \ %{&fenc}%=%l,%v
set noshowmode
set fo+=j  " Remove comment leader when joining lines
packadd comment  " Comment text with `gc{motion}` or `gcc`.
packadd matchit  " Improve `%` behaviour.

set autoindent
set tabstop=8  " A tab char still displays as 8 cells.
set shiftwidth=4
set softtabstop=-1  " <Tab> inserts 'shiftwidth' spaces.
set expandtab

" Enable/disable alternate screen scrolling when entering/exiting vim
" https://www.invisible-island.net/xterm/ctlseqs/ctlseqs.html
let &t_ti = "\e[?1007l" . &t_ti
let &t_te = &t_te . "\e[?1007h"

" Make Ctrl-Backspace delete previous word.
" 't_kb' is the sequence sent by the terminal's backspace key.
" '\010' is Ctrl-H in octal.
if &t_kb == '\010'
    noremap! <C-?> <C-w>
else
    noremap! <C-h> <C-w>
endif

" Auto-fill new html files with boilerplate.
if filereadable(expand('~/Templates/boilerplate.html'))
    autocmd BufNewFile *.html 0r ~/Templates/boilerplate.html
endif

" Mark trailing whitespace as an error when not in insert mode.
" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
3match Error /\s\+$/
autocmd BufWinEnter * 3match Error /\s\+$/
autocmd InsertEnter * 3match Error /\s\+\%#\@<!$/
autocmd InsertLeave * 3match Error /\s\+$/

" junegunn/vim-plug
call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

call plug#end()

" Enable automatic bracketed paste (no more `:set paste`)
" https://stackoverflow.com/questions/5585129/pasting-code-into-terminal-window-into-vim-on-mac-os-x
" if &term =~ "xterm.*"
"     let &t_ti = &t_ti . "\e[?2004h"
"     let &t_te = "\e[?2004l" . &t_te
"     function! XTermPasteBegin(ret)
"         set pastetoggle=<Esc>[201~
"         set paste
"         return a:ret
"     endfunction
"     map <expr> <Esc>[200~ XTermPasteBegin("i")
"     imap <expr> <Esc>[200~ XTermPasteBegin("")
"     vmap <expr> <Esc>[200~ XTermPasteBegin("c")
"     cmap <Esc>[200~ <nop>
"     cmap <Esc>[201~ <nop>
" endif

" Check syntax item under cursor with `gs`
" https://stackoverflow.com/questions/9464844/how-to-get-group-name-of-highlighting-under-cursor-in-vim
function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap gs :call SynStack()<CR>

if exists('$TERMINAL_THEME')
    let &bg = $TERMINAL_THEME =~ 'light' ? 'light' : 'dark'

    if $TERMINAL_THEME =~ 'solarized'
        colorscheme solarized
    elseif $TERMINAL_THEME =~ 'gruvbox'
        colorscheme gruvbox
    endif
else
    set cc=
    colorscheme mono
endif
