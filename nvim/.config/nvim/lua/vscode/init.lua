local opt = vim.opt
local g = vim.g

opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.expandtab = true
opt.autoindent = true
opt.splitright = true
opt.splitbelow = true
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.signcolumn = 'yes:2'
opt.incsearch = true
opt.hidden = true
opt.showmode = false
opt.hls = false
opt.autoread = true
opt.clipboard = 'unnamedplus'
opt.listchars = 'lead:·,tab:▷○,trail:·,extends:◣,precedes:◢,nbsp:○'

g.EasyMotion_smartcase = 1

require('vscode.plugins')
require('vscode.autocmd')
require('vscode.keymaps')
require('vscode.plugins')
