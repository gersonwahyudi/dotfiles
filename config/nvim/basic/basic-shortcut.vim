" Basic file system cmd
nnoremap <C-o> :!touch<Space>
nnoremap <C-d> :!mkdir<Space>
nnoremap <C-m> :!mv<Space>%<Space>

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
