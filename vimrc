unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set laststatus=1
set mouse=
set clipboard=
set listchars=tab:›\ ,trail:·
set shiftwidth=0  " Follow tabstop
set nohlsearch
set colorcolumn=80

set noloadplugins
source $VIMRUNTIME/plugin/matchparen.vim
filetype indent plugin off

autocmd FileType sh,zsh,bash setlocal ts=8 noet
autocmd FileType html,markdown setlocal ts=2 et
autocmd FileType python,javascript,vim setlocal ts=4 et

colorscheme jfox

function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap gs :call SynStack()<CR>
