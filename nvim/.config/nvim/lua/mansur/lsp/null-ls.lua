local null_ls = require('null-ls')

local format = null_ls.builtins.formatting
local diag = null_ls.builtins.diagnostics

null_ls.setup({
  sources = {
    diag.eslint,
    format.eslint,
    diag.jshint,
  }
})
