scripte utf-8
inoremap jk <Esc>
set number
set ts=4
set shiftwidth=4
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'crusoexia/vim-monokai'
Plug 'ashfinal/vim-colors-violet'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'w0rp/ale'
call plug#end()

" airline
let g:airline_symbols = {}
let g:airline_symbols.linenr = '¶'
let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme = 'dracula'
let g:airline_theme = 'solarized'
" let g:airline_powerline_fonts = 1
" let g:airline_left_sep = 'さ'

" ale
let g:ale_enabled = 1

" NREDTree
" exe 'autocmd VimEnter * : NERDTree'
let NERDTreeWinSize = 25
let NERDTreeShowBookmarks = 1

syntax enable
let g:solarized_termcolors=256
set bg=dark
" colorscheme dracula
colorscheme solarized

set nocompatible
set t_Co=256

let g:minBufExplForceSyntaxEnable = 1

set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m
" set lines=32 columns=96
" set laststatus=2 
" set guifont=Input\ for\ Powerline:h12 
set noshowmode
