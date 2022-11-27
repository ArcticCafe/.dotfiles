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
set shiftround

let mapleader = " "
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'myusuf3/numbers.vim'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rstacruz/vim-closer'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()

" Chinese character
set fileencodings=utf8,cp936,gb18030,big5

" nerdtree settings
nnoremap <leader>t :NERDTreeToggle<CR>


" copy to the clipboard
set clipboard=

" change the air-line-theme
let g:airline_theme='minimalist'

" mapping
" focus movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" edit vim config
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>es :source $MYVIMRC<CR>

nnoremap <leader>i :PlugInstall<CR> " install the plugins
nnoremap <leader>m :MarkdownPreview<CR>
nnoremap <leader>s :MarkdownPreviewStop<CR>

" jk to normal mode
inoremap jk <Esc>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" <c-d> to delete a line
inoremap <C-d> <Esc>ddi

