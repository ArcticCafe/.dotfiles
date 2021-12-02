set number
set hlsearch
set showmatch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set clipboard=unnamedplus
set cursorline

let mapleader = " "
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" nerdtree
Plug 'preservim/nerdtree'
Plug 'myusuf3/numbers.vim'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rstacruz/vim-closer'


call plug#end()



" nerdtree settings
nnoremap <leader>t :NERDTreeToggle<CR>



" change the air-line-theme
let g:airline_theme='minimalist'

" mapping
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>i :PlugInstall<CR> " install the plugins

