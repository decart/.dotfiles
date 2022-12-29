syntax on

set termguicolors
set tabstop=2
set softtabstop=2
set expandtab
set smartindent
set shiftwidth=2
set number
set relativenumber
set numberwidth=4
set incsearch
set nohlsearch
set splitbelow
set splitright
set hidden
set scrolloff=8
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
    " \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    " \,sm:block-blinkwait175-blinkoff150-blinkon175

set guifont=Hack\ NF:h11


augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

augroup CursorLine
  autocmd!
  autocmd BufEnter,FocusGained,WinEnter * set cursorline
  autocmd BufLeave,FocusLost,WinLeave   * set nocursorline
augroup END

au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}
au FocusGained,BufEnter * :checktime

lua require('mansur.plugins')


let g:neovide_cursor_animation_length=0.05

let g:suda_smart_edit = 1 " Sudo write

let g:user_emmet_mode='a'
let g:user_emmet_expandabbr_key = '<C-e>'

let g:surround_no_insert_mappings = 1 " Surround plugin - disable <C-s>

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

lua require('mansur')

