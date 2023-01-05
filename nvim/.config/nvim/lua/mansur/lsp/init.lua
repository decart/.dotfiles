require('mansur.lsp.diagnostic')
require('mansur.lsp.config').setup_servers()
require('mansur.lsp.dap')

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})

-- Format on save
-- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format({ async = false, timeout_ms = 2000 })]]

