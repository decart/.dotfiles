local null_ls = require('null-ls')
null_ls.setup({
  sources = { 
    null_ls.builtins.formatting.fixjson,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.formatting.eslint,
  }
})

require('mason-null-ls').setup({
  ensure_installed = { 'stylua', 'fixjson', 'blade', 'shellcheck' },
  automatic_installation = true,
  automatic_setup = true
})

require('mason-null-ls').setup_handlers()

