local M = {}

M.map = function (mode, keybinds, command, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.api.nvim_set_keymap(mode, keybinds, command, options)
end

return M
