filetype plugin on
filetype indent on
set nocompatible
set encoding=utf8 ffs=unix,dos
set noerrorbells novisualbell t_vb=
set mouse=

" Colors
colorscheme zaibatsu
syntax off
set t_Co=0

function! ToggleColors()
  if exists("g:syntax_on")
    syntax off
    set t_Co=0
  else
    syntax on
    set t_Co=256
  endif
endfunction
nnoremap <C-q> :call ToggleColors()<CR>

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
cnoremap <silent> <C-a>	<Home>
cnoremap <silent> <C-e> <End>
nnoremap <silent> <C-l> :nohl<CR>

" Netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_localcopydircmd='cp -r'
autocmd FileType netrw nnoremap <buffer> D <nop>
autocmd FileType netrw nnoremap <buffer> R <nop>
autocmd FileType netrw nnoremap <buffer> x <nop>

" Status
set laststatus=2
set statusline=\ %<%f\ " filename
set statusline+=%w%h%m%r " option
set statusline+=\ [%{&ff}]/%y " fileformat/filetype
set statusline+=\ [%{getcwd()}] " current dir
set statusline+=\ [%{&encoding}] " encoding
set statusline+=%=%-14.(%l/%L,%c%V%)\ %p%%\ " line and percentage
