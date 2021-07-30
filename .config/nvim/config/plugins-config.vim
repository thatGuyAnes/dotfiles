" NERDTREE
let g:NERDTreeWinPos = "right"
" Automatically close vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
let NERDTreeMinimalUI = 1

" Coc global extensions
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-tslint-plugin', 'coc-json', 'coc-html', 'coc-css', 'coc-diagnostic', 'coc-emmet', 'coc-snippets' ]


" IndentLine
let g:indentLine_char = '│'
" let g:indentLine_setColors = 0
