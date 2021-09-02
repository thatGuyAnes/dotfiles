" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}                      " Completion
Plug 'preservim/nerdtree'                                            " NERDTree

Plug 'junegunn/fzf', { 'do' : { -> fzf#install() } }                 " Fuzzy Search
Plug 'junegunn/fzf.vim'                                              
Plug 'psliwka/vim-smoothie'                                          " Smooth Scrolling <C-d>&<C-U>
Plug 'jiangmiao/auto-pairs'                                          " Insert Closing pairs
Plug 'itchyny/lightline.vim'                                         " Status line
Plug 'tpope/vim-fugitive'                                            " Git wrapper
Plug 'ryanoasis/vim-devicons'                                        " Icons
Plug 'Yggdroot/indentLine'                                           " Add Indentation's Lines
Plug 'tpope/vim-commentary'                                          " Comments lines of code or block
Plug 'honza/vim-snippets'                                            " Code snippets
Plug 'unblevable/quick-scope'                                        " Character highligh when using f,F,t,T
Plug 'ThePrimeagen/vim-be-good'                                      " vim game to practice basic mvts
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Themes                                                             
Plug 'overcache/NeoSolarized'                                        "
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }                   "
Plug 'bluz71/vim-nightfly-guicolors'                                 "
Plug 'morhetz/gruvbox'                                               "
Plug 'tomasr/molokai'                                                "
Plug 'drewtempelmeyer/palenight.vim'                                 "
Plug 'shaunsingh/moonlight.nvim'
Plug 'mhartington/oceanic-next'
Plug 'marko-cerovac/material.nvim'
Plug 'Yagua/nebulous.nvim'
call plug#end()                                                      
