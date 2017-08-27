let mapleader=' '
nnoremap <SPACE> <NOP>
set t_Co=256
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
set encoding=utf-8

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

set ignorecase
set smartcase
set gdefault
set magic

set tabstop=4
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
nnoremap <Leader>up :ctrl-w up
nnoremap <Leader><right> <C-w><right>
nnoremap <Leader><left> <C-w><left>
nnoremap <Leader><up> <C-w><up>
nnoremap <Leader><down> <C-w><down>
nnoremap <Leader>t :NERDTreeToggle<CR>
call plug#begin('~/.vim/plugged')
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'iCyMind/NeoSolarized'
	Plug 'neomake/neomake'
	Plug 'scrooloose/nerdcommenter'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/libclang-python3'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
" let g:airline#extensions#tabline#right_sep = ' '
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#right_alt_sep = '|'
" let g:airline_left_sep = ' '
" let g:airline_left_alt_sep = '|'
" let g:airline_right_sep = ' '
" let g:airline_right_alt_sep = '|'
let g:airline_theme = 'simple'
let g:airline_solarized_bg = 'dark'

let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrailingWhitespace = 1

nnoremap <Leader>/ :<space>c<space><CR>
autocmd! BufWritePost * Neomake

let g:deoplete#enable_at_startup = 1

let g:neomake_place_signs = 1
let g:neomake_verbose = 1
let g:neomake_cpp_enabled_makers = ['clang']

colorscheme NeoSolarized
set background=dark

set termguicolors
