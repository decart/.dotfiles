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

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'lewis6991/gitsigns.nvim'
" Plug 'kyazdani42/nvim-tree.lua' " Tree view
Plug 'nvim-neo-tree/neo-tree.nvim' " Tree view
Plug 'romgrk/barbar.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'mhinz/vim-startify'
Plug 'terryma/vim-multiple-cursors'
Plug 'phaazon/hop.nvim'
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
Plug 'rhysd/git-messenger.vim'
Plug 'windwp/nvim-autopairs'

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

nnoremap <leader>h <C-w><C-h>
nnoremap <leader>j <C-w><C-j>
nnoremap <leader>k <C-w><C-k>
nnoremap <leader>l <C-w><C-l>
nnoremap <C-j> 20j
nnoremap <C-k> 20k
nnoremap vv ^vg_
vnoremap K <Plug>(expand_region_expand)
vnoremap J <Plug>(expand_region_shrink)

" Tree view
nnoremap <C-b> :Neotree reveal<cr>
" nnoremap <C-b> :NvimTreeToggle<CR>
" nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>

nnoremap s :HopChar1<CR>

noremap  <C-s> <ESC>:w<CR>
inoremap <C-s> <esc>:w<cr>
nnoremap <leader>q :qa<CR>
nnoremap <leader><S-q> :qa!<CR>
nnoremap <C-\> :vsplit %<CR>
nnoremap <F5> :set list!<CR>

" Shift/unshift selected lines
vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv
vnoremap <silent> > >gv
vnoremap <silent> < <gv

" Move to previous/next tab
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next tab
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>

" Close buffer
nnoremap <silent>    <C-w> :BufferClose<CR>
noremap  <silent>    <A-o> :b#<CR>

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Git
nmap <Leader>m <Plug>(git-messenger)

let g:suda_smart_edit = 1

let g:user_emmet_mode='ivn'
let g:user_emmet_expandabbr_key = '<C-e>'

let g:surround_no_insert_mappings = 1
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_quit_key='<Esc>'

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

