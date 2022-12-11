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

Plug 'gpanders/editorconfig.nvim'

Plug 'terryma/vim-expand-region'
Plug 'akinsho/toggleterm.nvim'
Plug 'lambdalisue/suda.vim'

" UI
Plug 'MunifTanjim/nui.nvim'

" Color theme
Plug 'gruvbox-community/gruvbox'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'lukas-reineke/indent-blankline.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-ui-select.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-project.nvim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'lewis6991/gitsigns.nvim'
Plug 'kyazdani42/nvim-tree.lua' " Tree view
"   Plug 'nvim-neo-tree/neo-tree.nvim' " Tree view
Plug 'romgrk/barbar.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'mhinz/vim-startify'
Plug 'phaazon/hop.nvim'
Plug 'rhysd/git-messenger.vim'
Plug 'windwp/nvim-autopairs'

" Laguages
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
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

Plug 'folke/which-key.nvim'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

let g:neovide_cursor_animation_length=0.05

let g:VM_default_mappings = 0
let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"]             = '<C-A-Down>'
let g:VM_maps["Add Cursor Up"]               = '<C-A-Up>'
let g:VM_maps['Find Under']                  = '<C-n>'
let g:VM_maps['Find Subword Under']          = '<C-n>'
let g:VM_maps["Skip Region"]                 = 'q'

let g:suda_smart_edit = 1 " Sudo write

let g:user_emmet_mode='ivn'
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

