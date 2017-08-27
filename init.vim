let mapleader="\<SPACE>"
nnoremap <SPACE> <Nop>
set showcmd
set showmatch
set showmode
set ruler
set number
set formatoptions+=o
set textwidth=0
set shiftwidth=4

set modeline
set linespace=0
set nojoinspaces
set splitbelow
set splitright

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set ignorecase
set smartcase
set gdefault
set magic

function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

nnoremap <leader>r :call NumberToggle()<cr>

nnoremap ; :
nnoremap Q @q
nnoremap 4 $
nnoremap 6 ^

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>

call plug#begin('~/.vim/plugged')

    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'luna'
