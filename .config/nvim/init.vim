source ~/.config/nvim/config/settings.vim      " General settings
source ~/.config/nvim/config/keys.vim            " Keymaps
source ~/.config/nvim/config/plugs.vim           " vim-plug
source ~/.config/nvim/config/coc-config.vim      "
source ~/.config/nvim/config/plugins-config.vim  "

" Load the colorscheme : [ tokyonight, NeoSolarized, nightfly, molokai, grubox, palenight ]
colorscheme palenight

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
