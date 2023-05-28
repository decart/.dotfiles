syntax on

set encoding=UTF-8
set background=dark
set termguicolors

set tabstop=2
set softtabstop=-1
set shiftwidth=0
set shiftround
set expandtab
set autoindent
set cpoptions+=I
" set smartindent
" set cindent
" filetype plugin indent on

set number
set relativenumber
set numberwidth=4
set incsearch
set nohlsearch
set splitbelow
set splitright
set hidden
set scrolloff=10
set undofile
set mouse=
set ignorecase
set smartcase
set noshowmode
set autoread
set signcolumn=yes:2
set clipboard=unnamedplus
set listchars=lead:·,tab:▷ ,trail:·,extends:◣,precedes:◢,nbsp:○
set list
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50

lua require('user.plugins')

let g:suda_smart_edit = 1 " Sudo write
let g:expand_region_text_objects = get(g:, 'expand_region_text_objects', {
          \ 'iw'  :0,
          \ 'iW'  :0,
          \ 'i"'  :1,
          \ 'i''' :1,
          \ 'i]'  :1,
          \ 'ib'  :1,
          \ 'iB'  :1,
          \ 'il'  :0,
          \ 'ip'  :0,
          \ 'ie'  :0,
          \})

lua require('user')

