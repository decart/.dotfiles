require('aerial').setup({
  attach_mode = "global",
  placement = "edge",
  backends = { "lsp", "treesitter", "markdown", "man" },
  default_direction = "prefer_right",
  layout = { width = 35 },
  show_guides = true,
  filter_kind = false,
  guides = {
    mid_item = "├ ",
    last_item = "└ ",
    nested_top = "│ ",
    whitespace = "  ",
  },
  icons = require('mansur.icons').cmp,
})
