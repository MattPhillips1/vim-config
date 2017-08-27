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

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>

call plug#begin('~/.vim/plugged')

    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
call plug#end()
