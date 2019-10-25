scripte utf-8
inoremap <C-]> <Esc>
inoremap <C-H> <C-W>
noremap <tab> ==
noremap <CR> o<Esc>
nnoremap <C-c> <C-[>
nnoremap <C-[> <C-c>
inoremap <C-c> <C-[>
inoremap <C-[> <C-c>
vnoremap <C-c> <C-[>
vnoremap <C-[> <C-c>

map <C-x><C-c> <C-\><C-n>
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set cindent
set autoindent
set nohlsearch
call plug#begin('~/.config/nvim/plugged')
" call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'altercation/vim-colors-solarized'
" Plug 'crusoexia/vim-monokai'
" Plug 'ashfinal/vim-colors-violet'
Plug 'scrooloose/nerdtree'
" Plug 'dracula/vim'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'jceb/vim-orgmode'
" Plug 'Shougo/neocomplete'
Plug 'Shougo/neocomplcache' " no lua supprted
call plug#end()

" airline
let g:airline_symbols = {}
let g:airline_symbols.linenr = '¶'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'
" let g:airline_theme = 'alduin'
let g:airline_powerline_fonts = 1
" let g:airline_left_sep = 'さ'

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" ale
let g:ale_enabled = 1

" NREDTree
" exe 'autocmd VimEnter * : NERDTree'
let NERDTreeWinSize = 25
let NERDTreeShowBookmarks = 1

set cinoptions+=g0

syntax enable
" let g:solarized_termcolors=256
set bg=dark
let g:gruvbox_contrast_light="medium"
let g:gruvbox_contrast_dark="medium"
colorscheme gruvbox

set nocompatible
set t_Co=256

let g:minBufExplForceSyntaxEnable = 1

" set guioptions-=T
" set guioptions-=r
" set guioptions-=L
" set guioptions-=m
" set lines=32 columns=96
" set laststatus=2 
" set guifont=Input\ for\ Powerline:h12 
" set guifont=Fira\ Code\ 12
" set guifont=Fira\ Code:h11
" set guifont=DejaVu\ Sans\ Mono:h14
set guifont=Ubuntu\ Mono:h14
set guifontwide=Ubuntu\ Mono:h14
set mouse=a
" set noshowmode

inoremap <C-J> :call CompileRunGcc()<CR>
noremap <C-J> :call CompileRunGcc()<CR>

func! CompileRunGcc()
	exec "w" 
	if &filetype == 'c' 
        exec '!echo "---------------------------------------------------------------------------------"'
		exec '!g++ % -o %<.exec -O2 -std=c++11 -DLOCAL && time ./%<.exec'
        " exec '!time ./%<'
	elseif &filetype == 'cpp'
        exec '!echo "---------------------------------------------------------------------------------"'
		exec '!g++ % -o %<.exec -O2 -std=c++11 -DLOCAL && time ./%<.exec'
        " exec '!time ./%<'
	elseif &filetype == 'python'
		exec '!time python %'
	elseif &filetype == 'sh'
		:!time bash %
	endif 
endfunc 

let g:neocomplete#enable_at_startup = 1

augroup Skeleton
	au BufNewFile *.cpp 0r ~/.emacs.d/templates/template.cpp
augroup end
