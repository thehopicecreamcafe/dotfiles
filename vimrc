syntax on

set t_Co=256

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set ignorecase smartcase
set cursorline

" tab mappindgs
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map  <C-q> :tabclose<CR>

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/

let g:NERDTreeDirArrows=0

filetype plugin indent on

set background=dark

colorscheme desert

