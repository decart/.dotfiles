local null_ls = require('null-ls')
local opts = require('mansur.lsp.options')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.fixjson,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.formatting.eslint,
  },
  border = "rounded",
})

require('mason-null-ls').setup({
  ensure_installed = opts.null_ls_sources,
  automatic_installation = true,
  automatic_setup = true
})

