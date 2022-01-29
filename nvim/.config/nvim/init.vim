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
set mouse=a
set ignorecase
set smartcase
set noshowmode
set signcolumn=auto:2
set clipboard=unnamedplus
set listchars=lead:·,tab:▷ ,trail:·,extends:◣,precedes:◢,nbsp:○
set list
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    " \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    " \,sm:block-blinkwait175-blinkoff150-blinkon175


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

" *****************************************************************************
" Vim-PLug core
" *****************************************************************************
if has('vim_starting')
  set nocompatible
endif

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'voldikss/vim-floaterm'

" Color theme
Plug 'gruvbox-community/gruvbox'
Plug 'kristijanhusak/vim-hybrid-material'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'lewis6991/gitsigns.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'romgrk/barbar.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'mhinz/vim-startify'
Plug 'terryma/vim-multiple-cursors'
Plug 'phaazon/hop.nvim'
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }

" Laguages
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'onsails/lspkind-nvim'
Plug 'ray-x/cmp-treesitter'
Plug 'L3MON4D3/LuaSnip'
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'windwp/nvim-ts-autotag'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'

call plug#end()

nnoremap <Space> <Nop>
let mapleader = " "

noremap <C-p> :Telescope find_files<CR>
noremap <C-f> :Telescope live_grep<CR>

nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

nnoremap <C-b> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

nnoremap s :HopChar1<CR>

noremap  <C-s> <ESC>:w<CR>
inoremap <C-s> <esc>:w<cr>
nnoremap <leader>q :qa<CR>
nnoremap <leader><S-q> :qa!<CR>
nnoremap <C-\> :vsplit %<CR>
nnoremap <F5> :set list!<CR>

" Shift/unshift selected lines
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Move to previous/next tab
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next tab
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>

" Close buffer
nnoremap <silent>    <C-w> :BufferClose<CR>
noremap  <silent>    <A-o> :b#<CR>

let g:user_emmet_mode='ivn'
let g:user_emmet_expandabbr_key = '<C-e>'
let g:surround_no_insert_mappings = 1


lua require('mansur')

