local tree_cb = require('nvim-tree.config').nvim_tree_callback

require('nvim-tree').setup {
  view = {
    auto_resize = true,
    mappings = {
      list = {
        { key = "<C-q>", cb = tree_cb("vsplit") }
      }
    }
  }
}

vim.g.nvim_tree_indent_markers = 1
