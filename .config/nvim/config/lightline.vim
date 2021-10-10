" if !exists('g:loaded_lightline')
"     echom "LIGHTLINE NOT LOADED"
"     finish
" endif

" lightline settings.
let g:lightline = {
    \ 'colorscheme': 'gruvbox8',
    \ 'active': {
    \   'left': [ ['mode'],
    \           [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [ ['filetype', 'percent', 'lineinfo' ] ]
    \},
    \ 'component_function': {
    \   'filename': 'LightlineFilename',
    \   'modified': 'LightLineModified',
    \   'gitbranch': 'GitBranch'
    \ }
    \ }

let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ ['filetype']] }

function! LightlineFilename()
    return &ft ==# 'vimfiler' ? vimfiler#get_status_string() :
          \  &ft ==# 'unite' ? unite#get_status_string() :
          \ expand('%:F') !=# '' ? expand('%:F') : '[No Name]'
    " return expand('%F') jd
endfunction

function! LightLineModified() abort
    return &modified ? '●' : ''
endfunction

function! GitBranch()
  return " " . FugitiveHead()
endfunction

" Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
