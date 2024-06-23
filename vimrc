let g:netrw_dirhistmax=0
set laststatus=1
set mouse=
set clipboard=
set list
set listchars=tab:›\ ,trail:·
set shiftwidth=4
set expandtab
set nohlsearch
set noloadplugins
source $VIMRUNTIME/plugin/matchparen.vim

autocmd FileType javascript,html,css,markdown set sw=2

colorscheme jfox

function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap gs :call SynStack()<CR>
