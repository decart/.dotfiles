local wk         = require('which-key')
local Terminal   = require('toggleterm.terminal').Terminal
local dap        = require('dap')
local dapui      = require('dapui')
local telescope  = require('telescope.builtin')

local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  float_opts = {
    border = "rounded",
  },
  hidden = true
})

wk.register({
  q = { '<cmd>qa<cr>', 'Close vim' },
  Q = { '<cmd>qa!<cr>', 'Close vim without save' },
  p = { telescope.registers, 'Paste from...'},
  m = { telescope.marks, 'Marks'},
  e = { '<cmd>Neotree filesystem reveal<cr>', 'Current file in explorer' },
  c = { '<cmd>BufferClose<cr>', 'Close buffer' },
  o = { '<cmd>AerialToggle<cr>', 'Show outline' },
  b = {
    name = 'Buffer',
    b = { '<cmd>BufferPick<cr>', 'Pick buffer' },
    d = { '<cmd>BufferPickDelete<cr>', 'Pick delete' },
    l = { telescope.buffers, 'List' }
  },
  f = {
    name = 'Find',
    f = { telescope.find_files, 'Find file' },
    s = { telescope.lsp_workspace_symbols, 'Symbols' },
    r = { telescope.oldfiles, 'Open recent file' },
    g = { telescope.live_grep, 'Live grep' },
    p = { telescope.project, 'Projects' }
  },
  l = {
    name = 'LSP',
    a = { vim.lsp.buf.code_action, 'Code action' },
    h = { vim.lsp.buf.signature_help, 'Signature help' },
    D = { vim.lsp.buf.declaration, 'Go to declaration' },
    d = { telescope.lsp_definitions, 'Definitions' },
    r = { telescope.lsp_references, 'References' },
    i = { vim.diagnostic.open_float, 'Diagnostic float' },
    q = { telescope.quickfix, 'Quick fix' },
    t = { telescope.filetypes, 'Change file type' },
    s = { telescope.treesitter, 'Buffer symbols' },
    f = { function() vim.lsp.buf.format({ async = true, timeout_ms = 2000 }) end, 'Format code' },
    R = { '<cmd>LspRestart<cr>', 'Restart' },
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
    m = { '<Plug>(git-messenger)', 'Blame' },
    s = { '<cmd>Neotree float git_status<cr>', 'Status'},
  },
  h = {
    name = "Help",
    h = { telescope.command_history, 'Command history' },
    t = { telescope.help_tags, 'Help tags' },
    m = { telescope.man_pages, 'Man pages'},
    k = { telescope.keymaps, 'Keymaps'},
  }
}, { prefix = '<leader>' })

wk.setup({
  plugins = {
    presets = { motions = false },
  },
  icons = {
    breadcrumb = "»" , -- symbol used in the command line area that shows your active key combo
    separator = "", -- symbol used between a key and it's label
    group = "  ", -- symbol prepended to a group
  },
})
