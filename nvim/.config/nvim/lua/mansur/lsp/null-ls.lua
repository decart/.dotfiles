local null_ls = require('null-ls')
null_ls.setup({
  sources = { 
    null_ls.builtins.formatting.fixjson,
  }
})

require('mason-null-ls').setup({
  ensure_installed = { 'stylua', 'fixjson', 'blade', 'shellcheck', 'eslint_d' },
  automatic_installation = true,
  automatic_setup = true
})

require('mason-null-ls').setup_handlers()

