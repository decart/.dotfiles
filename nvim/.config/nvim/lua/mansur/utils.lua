local M = {}

M.map = function(mode, keybinds, command, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.api.nvim_set_keymap(mode, keybinds, command, options)
end

M.bg = function(group, default)
  local colors = vim.api.nvim_get_hl_by_name(group, 1)
  if (colors.background) then
    return string.format('#%x', colors.background)
  end

  return default
end


return M
