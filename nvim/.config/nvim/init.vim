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
set signcolumn=number
set clipboard=unnamedplus

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
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

" Laguages
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer', { 'do': ':LspInstall --sync pyright tsserver jsonls html cssls sumneko_lua phpactor vimls vuels' }
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'onsails/lspkind-nvim'
Plug 'ray-x/cmp-treesitter'
Plug 'L3MON4D3/LuaSnip'

call plug#end()

nnoremap <Space> <Nop>
let mapleader = " "

colorscheme gruvbox
set background=dark

lua require('mansur')

noremap <C-p> :Telescope find_files<CR>
noremap <C-f> :Telescope live_grep<CR>

nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

nnoremap <C-b> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

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
