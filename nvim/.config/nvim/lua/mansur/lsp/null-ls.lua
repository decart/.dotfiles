require('null_ls').setup()

require('mason-null-ls').setup({
  ensure_installed = { 'stylua', 'jq', 'eslint_d', 'blade', 'shellcheck' },
  automatic_installation = true,
  automatic_setup = true
})

require('mason-null-ls').setup_handlers()

