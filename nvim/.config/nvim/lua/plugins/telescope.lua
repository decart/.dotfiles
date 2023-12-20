local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<C-f>", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    { "<C-p>", Util.telescope("files"), desc = "Find Files (root dir)" },
  }
}