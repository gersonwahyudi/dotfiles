" Plugin configuration
call plug#begin('~/.config/nvim/plug/plugged')
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
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
