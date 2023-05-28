local usr = require('user.utils')
local opt = vim.opt
local api = vim.api

opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.foldtext = 'v:lua.require("user.fold").foldtext()'
opt.foldenable = true
opt.completeopt = 'menuone,noselect'

local enableRelativeNumbers = function ()
  local mode = api.nvim_get_mode().mode
  if (opt.nu) then opt.rnu = mode ~= 'i' end
end

local disableRelativeNumbers = function ()
  if (opt.nu) then opt.rnu = false end
end

usr.auGroupedCommands({
  LineNumbers = {
    { {'BufEnter', 'FocusGained', 'InsertLeave', 'WinEnter'}, '*', enableRelativeNumbers  },
    { {'BufLeave', 'FocusLost', 'InsertEnter', 'WinLeave'}, '*', disableRelativeNumbers }
  },
  CursorLine = {
    { {'BufEnter', 'FocusGained', 'WinEnter'}, '*', 'set cursorline' },
    { {'BufLeave', 'FocusLost', 'WinLeave'}, '*', 'set nocursorline' }
  },
  -- OpenFolds = {
  --   { {'BufReadPost', 'FileReadPost'}, '*', 'normal zR'}
  -- }
})

usr.auCommand({'FocusGained', 'BufEnter'}, '*', ':checktime')
usr.auCommand('TextYankPost', '*', function ()
  vim.highlight.on_yank({higroup="IncSearch", timeout=150})
end)
