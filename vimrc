let g:netrw_dirhistmax=0
set laststatus=1
set mouse=
set clipboard=
set list
set listchars=tab:\›\ ,trail:·
set softtabstop=-1
set expandtab

autocmd FileType sh,vim set sw=4
autocmd FileType javascript,html,css,markdown set sw=2

colorscheme jfox

function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap gs :call SynStack()<CR>
