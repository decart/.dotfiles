local wk       = require('which-key')
local Terminal = require('toggleterm.terminal').Terminal
local dap      = require('dap')
local dapui    = require('dapui')

local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  float_opts = {
    border = "double",
  },
  hidden = true
})

wk.register({
  q = { '<cmd>qa<cr>', 'Close vim' },
  Q = { '<cmd>qa!<cr>', 'Close vim without save' },
  b = { '<cmd>BufferPick<cr>', 'Pick buffer' },
  f = {
    name = 'Find',
    f = { '<cmd>Telescope find_files<cr>', 'Find file' },
    r = { '<cmd>Telescope oldfiles<cr>', 'Open recent file' },
    g = { '<cmd>Telescope live_grep<cr>', 'Live grep' },
    p = { '<cmd>Telescope project<cr>', 'Projects' }
  },
  l = {
    name = 'LSP',
    a = { function() vim.lsp.buf.code_action() end, 'Code action' },
    h = { function() vim.lsp.buf.signature_help() end, 'Signature help' },
    d = { function() vim.diagnostic.open_float() end, 'Diagnostic float' },
    f = { function() vim.lsp.buf.format({ async = true, timeout_ms = 2000 }) end, 'Format code' },
  },
  d = {
    name = 'Debug',
    r = { require('dap.ext.vscode').load_launchjs, 'Reload launchjs config' },
    b = { dap.toggle_breakpoint, 'Toggle breakpoint' },
    e = { dapui.eval, 'Eval expression' },
    f = { dapui.float_element, 'Floating elements' },
  },
  g = {
    name = 'Git',
    g = { function() lazygit:toggle() end, 'Lazy git' },
    b = { '<Plug>(git-messenger)', 'Blame' }
  }
}, { prefix = '<leader>' })

wk.setup({
  plugins = {
    presets = { motions = false },
  }
})
