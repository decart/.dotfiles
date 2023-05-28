local map = require("user.utils").map
local telescope = require("telescope.builtin")

local lsp_augroup = vim.api.nvim_create_augroup('LSPUser', {})
local createAutocmd = vim.api.nvim_create_autocmd

local M = {}

M.servers = {
  "pyright",
  "tsserver",
  "jsonls",
  "html",
  "cssls",
  "emmet_ls",
  "lua_ls",
  "phpactor",
  "vimls",
  "volar",
  "tailwindcss",
  "prismals",
}

M.null_ls_sources = { 'stylua', 'fixjson', 'blade', 'shellcheck' }

M.async_format = function ()
  vim.lsp.buf.format({
    async = true,
    timeout_ms = 2000,
    filter = function (client)
      return client.name == 'null-ls'
    end
  })
end

M.sync_format = function ()
  vim.lsp.buf.format({
    async = false,
    timeout_ms = 2000,
    filter = function (client)
      return client.name == 'null-ls'
    end
  })
end

M.lsp_attach = function(_, bufnr)
  -- LSP actions
  map('n', 'K', vim.lsp.buf.hover)
  map("n", "gd", telescope.lsp_definitions)
  map("n", "gD", vim.lsp.buf.declaration)
  map("n", "gi", telescope.lsp_implementations)
  map('n', 'go', telescope.lsp_type_definitions)
  map("n", "gr", telescope.lsp_references)
  map('n', '<A-p>', vim.lsp.buf.signature_help)
  map('n', '<F2>', vim.lsp.buf.rename)
  map('nx', '<F3>', M.async_format)
  map('n', '<F4>', vim.lsp.buf.code_action)

  -- Diagnostics
  map('n', 'gl', vim.diagnostic.open_float)
  map('n', '[d', vim.diagnostic.goto_prev)
  map('n', ']d', vim.diagnostic.goto_next)

  -- Autocommands
  vim.api.nvim_clear_autocmds({ group = lsp_augroup, buffer = bufnr })

  -- Format on save
  createAutocmd('BufWritePre', { group = lsp_augroup, buffer = bufnr, callback = M.sync_format })
end

return M
