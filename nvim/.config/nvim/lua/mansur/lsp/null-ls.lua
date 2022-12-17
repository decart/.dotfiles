require('null-ls').setup({ 'stylua', 'jq', 'eslint_d', 'blade' })

require('mason-null-ls').setup({
  ensure_installed = nil,
  automatic_installation = true,
  automatic_setup = true
})

require('mason-null-ls').setup_handlers()

