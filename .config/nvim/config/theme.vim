if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" set termguicolors

if (has("termguicolors"))
    set termguicolors " enable true colors support
endif

let g:dracula_colorterm = 0
let g:dracula_italic = 1
colorscheme dracula
" set background=dark " dark or light

" let g:gruvbox_invert_selection = '0'
" syntax enable
" gruvbox_contrast = soft, medium, hard
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_contrast_light = 'medium'
" let g:gruvbox_italic=1
" colorscheme gruvbox
" set background=dark

" let ayucolor="light"
" let ayucolor="mirage"
" let ayucolor="dark"
" colorscheme ayu


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Highlights
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" hi Normal guibg=none ctermbg=none
" hi LineNr guibg=none ctermbg=none
" hi LineNr guifg=Grey ctermfg=Lightcyan
" hi Signcolumn guibg=none  ctermbg=none
" hi Visual guifg=none ctermfg=black
" hi Visual guibg=SeaGreen ctermbg=LightCyan
" highlight CursorLineNr guibg=none gui=bold
" highlight Cursor guifg=#ff00c4 gui=bold
" hi Visual gui=none
" hi EndOfBuffer guibg=none guifg=none
