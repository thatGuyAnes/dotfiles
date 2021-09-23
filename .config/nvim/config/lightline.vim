" if !exists('g:loaded_lightline')
"     echom "LIGHTLINE NOT LOADED"
"     finish
" endif

" lightline settings.
let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'active': {
    \   'left': [ ['mode'],
    \           [ 'readonly', 'filename', 'modified' ] ],
    \   'right': [ ['filetype', 'percent', 'lineinfo' ] ]
    \},
    \ 'component_function': {
    \   'filename': 'LightlineFilename',
    \   'modified': 'LightLineModified'
    \ }
    \ }

let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ ['filetype']] }

function! LightlineFilename()
    return &ft ==# 'vimfiler' ? vimfiler#get_status_string() :
          \  &ft ==# 'unite' ? unite#get_status_string() :
          \ expand('%:F') !=# '' ? expand('%:F') : '[No Name]'
    " return expand('%F')
endfunction

function! LightLineModified() abort
    return &modified ? '●' : ''
endfunction
