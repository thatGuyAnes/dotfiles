syntax on                               "  
set hidden                              "
set encoding=utf-8                      "
set cmdheight=1                         "
set tabstop=4                           "
set softtabstop=4                       "
set expandtab                           "
set smartindent                         "
set incsearch                           "
set hlsearch                            "
set ignorecase                          "
set smartcase                           "
set shiftwidth=4                        "
set scrolloff=6                         "
set colorcolumn=80                      "
set nu                                  "
set relativenumber                      "
set clipboard=unnamedplus               "
set noshowmode                          "
set laststatus=2                        "
"" Coc recommendation
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c                        "
" faster completion
set updatetime=300
" set formatoptions-=rco, simply stops having comment on new line.
au BufEnter * set fo-=c fo-=r fo-=o
set conceallevel=0 " shows backticks in md files
au! BufWritePost $MYVIMRC source %
set background=dark
set termguicolors

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
