let mapleader=" "

" Basic settings
set bg=dark
set go=a
set mouse=a
set nohlsearch
set clipboard=unnamedplus
set nocompatible
set encoding=utf-8
set number relativenumber
set noswapfile
set autochdir
set fileformat=unix

" Syntax settings
syntax on
filetype plugin on

" Auto Center
autocmd InsertEnter * norm zz

" Tab settings
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Fix splitting
set splitbelow splitright

" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Basic file system cmd
nnoremap <C-o> :!touch<Space>
nnoremap <C-d> :!mkdir<Space>
nnoremap <C-m> :!mv<Space>%<Space>

" Tab
nnoremap <Tab> gt
nnoremap <silent> <C-t> :tabnew<CR>

" Center screen after search
nnoremap n nzzzv
nnoremap N Nzzzv

" Shortcut split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Alt + hjkl to rezise windows
nnoremap <leader>j :resize -2<CR>
nnoremap <leader>k :resize +2<CR>
nnoremap <leader>h :vertical resize -2<CR>
nnoremap <leader>l :vertical resize +2<CR>

" Alias replace all to
nnoremap <A-s> :%s//gI/<Left><Left><Left>

" Map escape
inoremap jk <Esc>
inoremap kj <Esc>

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Alias write and quit to Q
nnoremap <leader>q :wq<CR>
nnoremap <leader>w :w<CR>

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Save file as sudo when no sudo permissions
cmap w!! w !sudo tee > /dev/null %

" Plugin configuration
call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
call plug#end()

" Colorscheme from morhetz:
colorscheme gruvbox

" Vimnerdtree from preservim settings:
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Vimwiki settings:
let g:vimwiki_list = [{'path': '~/documents/vimwiki'}]



