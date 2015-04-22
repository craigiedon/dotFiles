execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
au GUIEnter * simalt ~x

:set guioptions-=m "remove menu bar
:set guioptions-=T "remove toolbar
:set guioptions-=r "remove right-hand scroll bar
:set guioptions-=L "remove left-hand scroll bar

"NERD TREE CONFIG
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

"GUI only colour scheme
if has('gui_running')
	set background=dark
	colorscheme solarized
endif
