require("mason").setup()
require('mansur.lsp.null-ls')

local lspconfig = require('lspconfig')
local telescope = require('telescope.builtin')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local map = require('mansur.utils').map

local M = {}

M.servers = { 'pyright', 'tsserver', 'jsonls', 'html', 'cssls', 'sumneko_lua', 'phpactor', 'vimls', 'vuels', 'tailwindcss' }

function M.on_attach()
  map('n', 'gD',     vim.lsp.buf.declaration)
  map('n', 'gd',     telescope.lsp_definitions)
  map('n', 'gr',     telescope.lsp_references)
  map('n', 'gi',     telescope.lsp_implementations)
  map('n', '<A-p>',  vim.lsp.buf.hover)
end

function M.setup_servers()
  require('mason-lspconfig').setup({
    ensure_installed = M.servers
  })

  for _, server in ipairs(M.servers) do
    local options = {
      on_attach = M.on_attach,
      capabilities = capabilities
    }

    local ok, settings = pcall(require, 'mansur/lsp/settings/' .. server)
    if ok then
      options = vim.tbl_deep_extend('force', options, settings)
    end

    lspconfig[server].setup(options)
  end
end

return M
