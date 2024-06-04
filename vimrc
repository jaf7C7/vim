function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap gs :call SynStack()<CR>

let g:netrw_dirhistmax=0
set laststatus=1
set mouse=
set clipboard=
set viminfo=
colorscheme jfox
