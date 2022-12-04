local M = {}

local function config_keymaps(bufnr)
  local function keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  local opts = { noremap=true, silent=true }

  keymap('n', 'gD',         '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  keymap('n', 'gd',         '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  keymap('n', 'gr',         '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  keymap('n', '<A-p>',          '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  keymap('n', 'gi',         '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- keymap('n', '<leader>h',  '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  -- keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- keymap('n', '<leader>e',  '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  -- keymap('n', '<leader>f',  '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  -- keymap('n', '[d',         '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
  -- keymap('n', '[p',         '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
end

M.on_attach = function(client, bufnr)
  config_keymaps(bufnr)
end

return M
