set nocompatible " be vim improved
syntax on
set encoding=utf8

set ignorecase smartcase " if search pattern has uppercase char, search is case sensitive

" buffer mappings - use ctrl h/l to cycle left/right thru open buffers
map <C-l> :bn!<CR>
map <C-h> :bp!<CR>

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'DavidEGx/ctrlp-smarttabs'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0ng/vim-hybrid'
Plugin 'ajh17/Spacegray.vim'
Plugin 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'isRuslan/vim-es6'

call vundle#end()            " required
filetype plugin indent on    " required

set nowrap

" OSX stupid backspace fix
set backspace=indent,eol,start

" Set Tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

colorscheme challenger_deep
let g:challenger_deep_termcolors = 256

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" ctrlp config from https://coderwall.com/p/xhl3aq/my-ctrlp-configuration
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set autochdir

" for ctrl-p smart tabs from : https://github.com/DavidEGx/ctrlp-smarttabs
let g:ctrlp_extensions = ['smarttabs']

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" should allow you to undo after saving, changing buffers and changing back
:set hidden

" make MRU CtrlP defaut mode
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
