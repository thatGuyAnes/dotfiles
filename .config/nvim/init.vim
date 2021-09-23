source $HOME/.config/nvim/config/plugs.vim                    " vim-plug
 source $HOME/.config/nvim/config/settings.vim                 " General settings
 source $HOME/.config/nvim/config/keys.vim                     " Keymaps
 source $HOME/.config/nvim/config/indent_line-config.vim       " Line indentation config
 source $HOME/.config/nvim/config/lightline.vim                " Lightline conf
 source $HOME/.config/nvim/config/theme.vim                    " Theming
 " source $HOME/.config/nvim/config/lsp.vim
 source $HOME/.config/nvim/config/nerdTree.vim          " NerdTree config
 source $HOME/.config/nvim/config/coc-config.vim          " NerdTree config

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IndentLine
" set conceallevel=1
let g:indentLine_conceallevel = 1
let g:indent_blankline_show_first_indent_level = v:true
let g:indentLine_setColors = 1
let g:indentLine_enabled = 1
let g:indentLine_char = '▏'
" let g:indentLine_color_term = 239
let g:indent_blankline_filetype_exclude = ['NERDTree', 'nerdtree', 'NERD_tree_', '', 'help']
let g:indentLine_bufTypeExclude = ['terminal']

lua << EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
    indent = {
    enable = false,
    disable = {},
    },
    ensure_installed = { 
        "javascript",
        "html",
        "tsx",
        "scss",
        "json",
        "toml"
        }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
EOF


autocmd Filetype html setlocal ts=2 sw=2 expandtab        " Indent 2 spaces in HTML
