set nowrap                              "  
set tabstop=4                           "
set softtabstop=4                       "
set shiftwidth=4                        "
set expandtab                           "
set smartindent                         "
filetype plugin indent on
set hidden                              "
set encoding=utf-8                      "
set cmdheight=1                         "
set incsearch                           "
set hlsearch                            "
set ignorecase                          "
set smartcase                           "
set scrolloff=9                         "
set colorcolumn=80                      "
set splitright                          " Split to right
set splitbelow                          " Split to bottom
set nu                                  "
set relativenumber                      "
set nohlsearch
set clipboard=unnamedplus               "
set noshowmode                          "
set laststatus=2                        "
set signcolumn=yes
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set updatetime=300                      " faster completion.
au BufEnter * set fo-=c fo-=r fo-=o     " set formatoptions-=rco, simply stops having comment on new line.
set conceallevel=0                      " shows backticks in md files.
au! BufWritePost $MYVIMRC source %      " Saving in init.vim source it.
set termguicolors
" set winblend=100
set guicursor=i-ci:ver100-iCursor-blinkwait300-blinkon200-blinkoff150

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_lightline = 1 
let g:webdevicons_conceal_nerdtree_brackets = 1

let g:html_indent_tags = 'li\|p'        " Treat <li> and <p> tags like the block tags they are.

" Quick scope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

" syntax on                                 
" set mouse+=a                                 
