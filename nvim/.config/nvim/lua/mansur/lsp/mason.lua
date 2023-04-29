local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local mason_lspconfig = require('mason-lspconfig')
local opts = require('mansur.lsp.options')
local lspconfig = require('lspconfig')

require('mason').setup({
  ensure_installed = opts.servers,
  automatic_installation = true,
  ui = { border = 'rounded' }
});

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = opts.lsp_attach,
      capabilities = lsp_capabilities,
    })
  end,
})

for _, server_name in ipairs(mason_lspconfig.get_installed_servers()) do
  local ok, options = pcall(require, 'mansur/lsp/servers/' .. server_name)
  if ok then
    require('lspconfig')[server_name].setup(options)
  end
end
