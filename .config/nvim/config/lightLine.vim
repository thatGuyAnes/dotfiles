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


" let g:lightline = {
"       \ 'mode_map': {
"         \ 'n' : 'N',
"         \ 'i' : 'I',
"         \ 'R' : 'R',
"         \ 'v' : 'V',
"         \ 'V' : 'VL',
"         \ "\<C-v>": 'VB',
"         \ 'c' : 'C',
"         \ 's' : 'S',
"         \ 'S' : 'SL',
"         \ "\<C-s>": 'SB',
"         \ 't': 'T',
"         \ },
"       \ }

function! LightlineFilename()
    return &ft ==# 'vimfiler' ? vimfiler#get_status_string() :
          \  &ft ==# 'unite' ? unite#get_status_string() :
          \ expand('%:F') !=# '' ? expand('%:F') : '[No Name]'
    " return expand('%F')
endfunction

function! LightLineModified() abort
    return &modified ? '●' : ''
endfunction
