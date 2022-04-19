require('nvim-tree').setup {
  view = {
    width = 35,
    mappings = {
      list = {
        { key = "<C-q>", action = "vsplit" }
      }
    }
  },
  renderer = {
    indent_markers = { enable = true }
  },
  actions = {
    open_file = {
      resize_window = true
    }
  }
}

