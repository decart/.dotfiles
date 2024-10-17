local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<C-f>", LazyVim.pick("live_grep"), desc = "Grep (root dir)" },
    { "<C-p>", LazyVim.pick("auto"), desc = "Find Files (root dir)" },
  },

  opts = {
    defaults = {
      layout_config = { prompt_position = "top" },
    },
  },
}
