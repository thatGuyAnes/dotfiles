source ~/.config/nvim/config/settings.vim      " General settings
source ~/.config/nvim/config/keys.vim            " Keymaps
source ~/.config/nvim/config/plugs.vim           " vim-plug
source ~/.config/nvim/config/coc-config.vim      "
source ~/.config/nvim/config/plugins-config.vim  "

" Tokyonight theme config
" let g:tokyonight_style = "storm"
" let g:tokyonight_italic_comments = 1

" Load the colorscheme : [ tokyonight, NeoSolarized, nightfly, molokai ]
" let g:neosolarized_visibility = "low"
" let g:neosolarized_contrast = "low"
" let g:molokai_original = 1
colorscheme molokai
hi Normal guibg=NONE

" Enable lightline colorscheme
" let g:lightline = { 'colorscheme': '' }

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
