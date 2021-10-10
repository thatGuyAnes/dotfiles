set nowrap                              " Disable text wrapping
set tabstop=2                           " tab is 2 spaces
set softtabstop=2                       "
set shiftwidth=2                        "
set expandtab                           "
set smartindent                         "
set mouse+=a                            " Mouse support
filetype plugin indent on
set hidden                              "
set encoding=utf-8                      "
set cmdheight=1                         "
set incsearch                           "
set hlsearch                            "
set ignorecase                          "
set smartcase                           "
set scrolloff=3                         "
set colorcolumn=80                      "
set splitright                          " Split to right
set splitbelow                          " Split to bottom
set nu                                  "
set relativenumber                      "
set nohlsearch                          "
set clipboard=unnamedplus               "
set noshowmode                          " Remoce mode information (unnecessary because it's displayed in the statusline)
set laststatus=2                        "
set signcolumn=yes                      "
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set updatetime=300                      " faster completion.
au BufEnter * set fo-=c fo-=r fo-=o     " set formatoptions-=rco, simply stops having comment on new line.
set conceallevel=0                      " shows backticks in md files.
au! BufWritePost $MYVIMRC source %      " Saving in init.vim source it.
set winblend=10

" Blinking cursor in insert mode.
set guicursor=i-ci:ver100-iCursor-blinkwait300-blinkon200-blinkoff150

" set sidescroll=5
" set listchars+=precedes:<,extends:>

let g:html_indent_tags = 'li\|p'        " Treat <li> and <p> tags like the block tags they are.

" Quick scope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

autocmd Filetype html setlocal ts=4 sw=4 expandtab        " Indent 4 spaces in HTML
