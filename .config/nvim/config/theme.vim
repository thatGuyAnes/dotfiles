"##############################################################################
"### Importing themes configurations ###
"## { dracula, gruvbox, ayu, moonlight, solarized8, NeoSolarized,} ##
"##############################################################################
source $HOME/.config/nvim/config/themes/gruvbox.vim
source $HOME/.config/nvim/config/themes/dracula.vim
source $HOME/.config/nvim/config/themes/ayu.vim
source $HOME/.config/nvim/config/themes/moonlight.vim
source $HOME/.config/nvim/config/themes/solarized8.vim
source $HOME/.config/nvim/config/themes/gruvbox8.vim

" Get the right colors when running Vim inside tmux: see `:h xterm-true-color`
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set termguicolors                 " Enables true colors.
syntax enable                     " Enables syntax highlighting.
set background=dark               " Theme bg. {light, dark}.
colorscheme gruvbox8            " Color scheme.


"##############################################################################
"### Highlights ###
"##############################################################################

hi CursorLineNr guibg=none      gui=bold              " Cursorline numbers bg.
" hi Normal       guibg=none      ctermbg=none          " Removes bg.
" hi LineNr       guibg=none      ctermbg=none          " Line numbers bg.
" hi LineNr       guifg=Grey      ctermfg=Grey          " Line numbers fg.
" hi Signcolumn   guibg=none      ctermbg=none          " Signcolumn bg.
" hi Visual       guifg=none      ctermfg=black         " Visual selection fg.
" hi Visual       guibg=SeaGreen  ctermbg=Grey          " Visual selection bg.
" hi EndOfBuffer  guibg=none      guifg=none            " Endbuffer chars.
" hi Visual       gui=none                              " Removes visual highlight.

"##############################################################################
"### Legacy/Tests ###
"##############################################################################

" " Enable true colors support
" if (has("termguicolors"))
"     set termguicolors
" endif

" set t_ut=
