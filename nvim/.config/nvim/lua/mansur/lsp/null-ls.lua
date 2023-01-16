local null_ls = require('null-ls')
local servers = { 'stylua', 'jq', 'eslint_d', 'blade', 'shellcheck' }

null_ls.setup({ sources = { null_ls.builtins.diagnostics.eslint } })

require('mason-null-ls').setup({
  ensure_installed = servers,
  automatic_installation = true,
  automatic_setup = true
})

require('mason-null-ls').setup_handlers()

