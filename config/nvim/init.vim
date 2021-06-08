let mapleader=" "

" Plugin configuration
call plug#begin('~/.config/nvim/plug')
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
call plug#end()

" Basic settings
set showtabline=2
set title
set go=a
set mouse=a
set nohlsearch
set clipboard=unnamedplus
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set nocompatible
set encoding=utf-8
set number relativenumber
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

" SHORTCUTS :
" Basic file system cmd
nnoremap <C-o> :!touch<Space>
nnoremap <C-d> :!mkdir<Space>
nnoremap <C-m> :!mv<Space>%<Space>
" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR> 
" Tab
nnoremap <Tab> gt
nnoremap <silent> <A-t> :tabnew<CR>
" Center screen after search
nnoremap n nzzzv
nnoremap N Nzzzv
" Shortcut split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Alias replace all to
nnoremap <A-s> :%s//gI/<Left><Left><Left>
" Better tabbing
vnoremap < <gv
vnoremap > >gv
" Save file as sudo when no sudo permissions
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" Goyo plugin makes text more readable
map <leader>f :Goyo \| set bg=light \| set linebreak<CR>
" Replace ex mode with gq
map Q gq
" Vimnerdtree from preservim settings:
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" END OF SHORTCUTS 

" Colorscheme for nord:
colorscheme nord

" Autostart NERDTree
autocmd VimEnter * NERDTree

" Vimwiki settings:
let g:vimwiki_list = [{'path': '~/documents/vimwiki'}]
