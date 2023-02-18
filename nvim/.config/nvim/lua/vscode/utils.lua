local M = {}

M.map = function(mode, keybinds, command, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.keymap.set(mode, keybinds, command, options)
end

return M