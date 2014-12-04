syntax on

set t_Co=256

set expandtab " converts tabs to spaces
set tabstop=2 " set tab spaces to 2
set shiftwidth=2 " set >> and << width to 2
set softtabstop=2 " set columns when tab is hit in insert mode
set autoindent
set ignorecase smartcase " if search pattern has uppercase char, search is case sensitive
" set cursorline

" tab mappindgs
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map  <C-q> :tabclose<CR>

" Search for selected text, forwards or backwards, using * and # (or n and N)
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

set nocompatible               " be iMproved
filetype off                   " required!

" set run time path
set rtp+=~/.vim/bundle/vundle/

let g:NERDTreeDirArrows=0

filetype plugin indent on

set background=dark

colorscheme desert

