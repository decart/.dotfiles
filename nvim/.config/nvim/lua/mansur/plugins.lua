local TSUpdate = function ()
  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
  ts_update()
end

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function (use)
  use { 'wbthomason/packer.nvim' }

  use { 'gpanders/editorconfig.nvim' }

  use { 'akinsho/toggleterm.nvim' }
  use { 'lambdalisue/suda.vim' }

  -- Laguages
  use { 'mfussenegger/nvim-dap' }
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'jayp0521/mason-nvim-dap.nvim' }

  use { 'nvim-treesitter/nvim-treesitter', run = TSUpdate}
  use { 'jose-elias-alvarez/null-ls.nvim' }
  use { 'jayp0521/mason-null-ls.nvim' }
  use { 'neovim/nvim-lspconfig' }
  use { 'onsails/lspkind-nvim' }

  use { 'windwp/nvim-ts-autotag' }
  use { 'numToStr/Comment.nvim' }
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }
  -- use { 'mattn/emmet-vim' }
  use { 'terryma/vim-expand-region' }

  use { 'stevearc/aerial.nvim' }

  -- UI
  use { 'MunifTanjim/nui.nvim' }
  use { 'nvim-lualine/lualine.nvim' }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'lewis6991/gitsigns.nvim' }
  use { 'romgrk/barbar.nvim' }
  use { 'chentoast/marks.nvim' }
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  -- Color theme
  use { 'gruvbox-community/gruvbox' }
  use { 'kristijanhusak/vim-hybrid-material' }
  use { 'lukas-reineke/indent-blankline.nvim' }
  use { 'Mofiqul/dracula.nvim' }

  -- Telescope
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-telescope/telescope.nvim' }
  use { 'nvim-telescope/telescope-ui-select.nvim' }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'nvim-telescope/telescope-project.nvim' }

  use { 'nvim-neo-tree/neo-tree.nvim' } -- Tree view
  use { 'mhinz/vim-startify' }
  use { 'phaazon/hop.nvim' }
  use { 'rhysd/git-messenger.vim' }
  use { 'windwp/nvim-autopairs' }


  -- completion
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'ray-x/cmp-treesitter' }
  use { 'L3MON4D3/LuaSnip' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'rafamadriz/friendly-snippets' }


  -- Mappings
  use { 'kylechui/nvim-surround' }
  use { 'folke/which-key.nvim' }
  use { 'max397574/better-escape.nvim' }

  -- Tmux
  -- use { 'christoomey/vim-tmux-navigator' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
