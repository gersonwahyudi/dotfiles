" Map leader key
let mapleader=" "

" Basic settings
set bg=dark
set title
set autoindent
set showtabline=2
" set updatetime=300
" set timeoutlen=500
set go=a
" set laststatus=0
set clipboard+=unnamedplus
set nocompatible
set nohlsearch
" set noshowmode
" set noshowcmd
set mouse=a
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
