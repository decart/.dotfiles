local servers = { 'stylua', 'jq', 'eslint_d', 'blade', 'shellcheck' }
require('null-ls').setup(servers)

require('mason-null-ls').setup({
  ensure_installed = servers,
  automatic_installation = true,
  automatic_setup = true
})

require('mason-null-ls').setup_handlers()

