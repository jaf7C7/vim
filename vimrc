function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap gs :call SynStack()<CR>

set laststatus=1
set mouse=
set clipboard=
colorscheme jfox
