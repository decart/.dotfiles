local TSUpdate = function ()
  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
  ts_update()
end

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
  use { 'mattn/emmet-vim' }
  use { 'terryma/vim-expand-region' }

  -- UI
  use { 'MunifTanjim/nui.nvim' }
  use { 'nvim-lualine/lualine.nvim' }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'lewis6991/gitsigns.nvim' }
  use { 'romgrk/barbar.nvim' }
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  -- Color theme
  use { 'gruvbox-community/gruvbox' }
  use { 'kristijanhusak/vim-hybrid-material' }
  use { 'lukas-reineke/indent-blankline.nvim' }
  use {'dracula/vim', as = 'dracula'}

  -- Telescope
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-telescope/telescope.nvim' }
  use { 'nvim-telescope/telescope-ui-select.nvim' }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'nvim-telescope/telescope-project.nvim' }

  use { 'kyazdani42/nvim-tree.lua' }  -- Tree view
  --     use { 'nvim-neo-tree/neo-tree.nvim' } -- Tree view
  use { 'glepnir/dashboard-nvim' }
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


  use { 'tpope/vim-surround' }
  use { 'folke/which-key.nvim' }

  -- Tmux
  use { 'christoomey/vim-tmux-navigator' }

end)
