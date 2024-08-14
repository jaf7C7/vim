" ctrlbackspace.vim : Make Ctrl-Backspace delete previous word.

" 't_kb' is the sequence sent by the terminal's backspace key.
" '\010' is Ctrl-H in octal.
if &t_kb == '\010'
	noremap!  
else
	noremap!  
endif
