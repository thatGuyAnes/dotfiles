" syntax enable
set termguicolors
let g:gruvbox_contrast_dark = 'soft'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

" gruvbox_contrast = soft, medium, hard
" let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Highlights
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Signcolumn guibg=none  ctermbg=none
" hi Visual guifg=grey ctermfg=grey
" hi Visual guibg=white ctermbg=white
" highlight CursorLineNr guibg=none guifg=#FFCCAF gui=bold
" hi Visual gui=none
" hi EndOfBuo fer guibg=none
