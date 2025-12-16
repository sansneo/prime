" My old .vimrc!
" I recommend commentary, surround, vimwiki and targets as plugins.
filetype indent on
filetype plugin on
set nocompatible
set encoding=utf8 ffs=unix,dos
set noerrorbells novisualbell t_vb=
set mouse=

" Colors
syntax on
colorscheme zaibatsu

" Settings
set autoindent smartindent
set autoread lazyredraw
set nospell
set backspace=eol,start,indent whichwrap+=<,>,h,l
set clipboard=unnamedplus
set expandtab tabstop=4 shiftwidth=4
set ignorecase hlsearch incsearch
set number 
set scrolloff=8
set splitright splitbelow
set wildignore+=*/.git/*
set wrap
set nobackup nowritebackup noswapfile
set undofile undodir=~/.vim/undo

" Remaps
nnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
nnoremap <silent> <C-l> :nohl<CR>

" Netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_localcopydircmd='cp -r'
autocmd FileType netrw nnoremap <buffer> D <nop>
autocmd FileType netrw nnoremap <buffer> R <nop>
autocmd FileType netrw nnoremap <buffer> x <nop>
