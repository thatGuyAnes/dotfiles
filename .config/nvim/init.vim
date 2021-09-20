source ~/.config/nvim/config/plugs.vim                    " vim-plug
source ~/.config/nvim/config/lightLine.vim                " Lightline conf
source ~/.config/nvim/config/settings.vim                 " General settings
source ~/.config/nvim/config/theme.vim                    " Theming
source ~/.config/nvim/config/indent_line-config.vim       " Line indentation config
source ~/.config/nvim/config/nerdTree-config.vim          " NerdTree config
source ~/.config/nvim/config/keys.vim                     " Keymaps
source ~/.config/nvim/config/coc-config.vim               " Coc configuration

lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "javascript", "html" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}
EOF

highlight CursorLineNr guibg=none guifg=#FFCCAF gui=bold
autocmd Filetype html setlocal ts=2 sw=2 expandtab        " Indent 2 spaces in HTML
