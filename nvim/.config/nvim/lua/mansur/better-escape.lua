require("better_escape").setup {
  timeout = 300, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
  clear_empty_lines = true,
  keys = function() -- Stay on same column
    return vim.api.nvim_win_get_cursor(0)[2] > 1 and '<esc>l' or '<esc>'
  end,
}
