" Mark trailing whitespace as an error when not in insert mode.

if exists('g:loaded_trailingspace')
	finish
endif

let g:loaded_trailingspace = 1

" https://vim.fandom.com/wiki/Highlight_unwanted_spaces
3match Error /\s\+$/
autocmd BufWinEnter * 3match Error /\s\+$/
autocmd InsertEnter * 3match Error /\s\+\%#\@<!$/
autocmd InsertLeave * 3match Error /\s\+$/
