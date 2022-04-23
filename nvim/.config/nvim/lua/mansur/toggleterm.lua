local Terminal  = require('toggleterm.terminal').Terminal

require'toggleterm'.setup {
  shade_terminals = false,
  open_mapping = [[<C-t>]]
}

local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  float_opts = {
    border = "double",
  },
  hidden = true
})
function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

