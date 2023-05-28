require('neo-tree').setup({
  close_if_last_window = true,
  source_selector = {
    winbar = true,
    content_layout = "center",
  },
  window = {
    width = 40,
    mappings = {
      ["o"] = "open",
      ["a"] = { "add", config = { show_path = "relative" } }
    }
  }
})
