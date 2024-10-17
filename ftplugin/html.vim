nnoremap @e :.!emmet<CR>
inoremap <C-e> <C-r>=system("emmet ''")<Left><Left><Left>
nnoremap @f :%!prettier --stdin-filepath % --use-tabs<CR>
