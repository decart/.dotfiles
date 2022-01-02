local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {
    on_attach = require('mansur/lsp/server').on_attach
  }

  local import_ok, settings = pcall(require, 'mansur/lsp/settings/' .. server.name)
  if import_ok then
    opts = vim.tbl_deep_extend('force', opts, settings)
  end

  server:setup(opts)
end)
