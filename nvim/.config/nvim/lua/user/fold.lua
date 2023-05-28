local ffi = require("ffi")
ffi.cdef('int curwin_col_off(void);')

local api = vim.api

local M = {}

M.fill_char = '─'

M.foldtext = function ()
  local line_count = vim.v.foldend - vim.v.foldstart + 1
  local line = vim.fn.getline(vim.v.foldstart)

  local _, end_spaces = line:find('^%s*')
  local spaces = string.rep(' ', end_spaces)

  line = line:gsub('^%s*(.-)%s*$', '%1')
  local left = spaces .. line .. '… '
  local right = ' ' .. line_count .. ' lines '

  local gutter_width = ffi.C.curwin_col_off()
  local visible_win_width = api.nvim_win_get_width(0) - gutter_width
  local foldtext_len = left:len() + right:len()
  local fill_len = visible_win_width - foldtext_len + 2

  return left .. string.rep(M.fill_char, fill_len) .. right
end

return M
