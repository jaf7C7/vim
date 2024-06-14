function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap gs :call SynStack()<CR>


" For Emacs-style editing on the command-line:
cnoremap <C-A> <Home>
cnoremap <C-B> <Left>
cnoremap <C-D> <Del>
cnoremap <C-E> <End>
cnoremap <C-F> <Right>
cnoremap <C-N> <Down>
cnoremap <C-P> <Up>
cnoremap <Esc><C-B> <S-Left>
cnoremap <Esc><C-F> <S-Right>


let g:netrw_dirhistmax=0
set laststatus=1
set mouse=
set clipboard=
set viminfo=
set listchars=tab:\›\ ,trail:· list
set softtabstop=-1
set expandtab

autocmd FileType sh set sw=4
autocmd FileType vim set sw=4
autocmd FileType javascript,html,css set sw=2

colorscheme jfox
