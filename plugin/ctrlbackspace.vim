" ctrlbackspace.vim : Make Ctrl-Backspace delete previous word.

if exists('g:loaded_ctrlbackspace')
	finish
endif

let g:loaded_ctrlbackspace = 1

" 't_kb' is the sequence sent by the terminal's backspace key.
" '\010' is Ctrl-H in octal.
if &t_kb == '\010'
	noremap! <C-?> <C-w>
else
	noremap! <C-h> <C-w>
endif
