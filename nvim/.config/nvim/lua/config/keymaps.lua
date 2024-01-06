-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local comment = require("mini.comment")

vim.keymap.set("n", "<A-.>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<A-,>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set({ "n", "o", "v" }, "<S-h>", "^", { desc = "Go to start of line" })
vim.keymap.set({ "n", "o", "v" }, "<S-l>", "g_", { desc = "Go to end of line" })

vim.keymap.set("n", "<C-_>", function()
  return comment.operator() .. "_"
end, { expr = true, desc = "Comment" })

-- vim.keymap.del("n", "<C-/>")
-- vim.keymap.del("n", "<C-_>")
