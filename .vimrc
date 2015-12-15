execute pathogen#infect()
syntax on
filetype plugin indent on
Helptags

syntax enable
set number
let mapleader = ","

let mapleader=","

au GUIEnter * simalt ~x

:set guioptions-=m "remove menu bar
:set guioptions-=T "remove toolbar
:set guioptions-=r "remove right-hand scroll bar
:set guioptions-=L "remove left-hand scroll bar

:set guifont=Lucida_Console:h9:cANSI

"NERD TREE CONFIG
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

"GUI only colour scheme
if has('gui_running')
	set background=dark
	colorscheme solarized
endif

"Window navigation shortcuts

noremap <C-Down> <C-W>J
noremap <C-Left> <C-W>H
noremap <C-Up> <C-W>K
noremap <C-Right> <C-W>L

noremap <C-J> <C-W>j
noremap <C-H> <C-W>h
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l


"Workaround for SQL Omni completion messing with my Ctrl-C escape map
let g:ftplugin_sql_omni_key = '<C-X>'

"Auto reload vimrc on save
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"Backspace config
set backspace=indent,eol,start
:imap <C-BS> <C-W>

"Wrapping options for markdown
augroup markdownWrapping
	autocmd FileType mkd setlocal tw=80
	autocmd FileType mkd setlocal formatoptions+=t
augroup END

"Shortcut for make command
nnoremap <leader>m :make<ENTER>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:?\ ,eol:¬

"Presentation Mode
function! PresentationModeOn()
    set guifont=Lucida_Console:h20:cANSI        " for ubuntu
endfunction

function! PresentationModeOff()
    set guifont=Lucida_Console:h9:cANSI        " for ubuntu
endfunction

function! TogglePresentationMode()
  if !exists('w:present')
    let w:present=0
  endif

  if w:present==0
    call PresentationModeOn()
    let w:present=1
  else
    call PresentationModeOff()
    let w:present=0
  endif
endfunction

map <leader>z :call TogglePresentationMode()<CR>
