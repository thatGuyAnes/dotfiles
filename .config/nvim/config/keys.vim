let g:mapleader = "\<Space>"

" Splits navigation.
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Better escape
inoremap jk <Esc>
inoremap kj <Esc>

" Better editing
nnoremap vw viw
nnoremap cw ciw
nnoremap dw diw

" Better tabbing indentation
vnoremap < <gv
vnoremap > >gv

" Full width & Full height splits.
nnoremap <leader>fh :wincmd _<CR>
nnoremap <leader>fw :wincmd \|<CR>

" Commentary
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" File explorer.
nnoremap <silent> <C-p> :Files<CR>

" Toggle Tree
map <silent> <C-n> :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>
