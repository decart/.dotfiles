require("better_escape").setup {
    timeout = 300, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
    -- example(recommended)
    keys = function()
      return vim.api.nvim_win_get_cursor(0)[2] > 1 and '<esc>l' or '<esc>'
    end,
}
