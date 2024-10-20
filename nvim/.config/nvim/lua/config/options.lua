-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_picker = "telescope"
vim.opt.clipboard = "unnamed,unnamedplus"

vim.o.mouse = ""
vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting

local opt = vim.opt

opt.list = true
opt.listchars = {
  lead = "·",
  tab = "▷-",
  trail = "·",
  extends = "◣",
  precedes = "◢",
  nbsp = "○",
  -- eol = "⤶",
}

if vim.g.neovide then
  vim.o.guifont = "CaskaydiaCove Nerd Font:h12"
  vim.g.neovide_scroll_animation_far_lines = 5
end
