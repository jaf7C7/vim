" synstack.vim : Check syntax item under cursor with `gs`

" https://stackoverflow.com/questions/9464844/how-to-get-group-name-of-highlighting-under-cursor-in-vim
function! SynStack()
	  if !exists("*synstack")
		  return
	  endif
	  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap gs :call SynStack()<CR>
