local dap = require('dap')
local dapui = require('dapui')

require('mason-nvim-dap').setup({
  ensure_installed = { 'python', 'node2', 'chrome' },
  automatic_installation = true,
  automatic_setup = true,
})

require('dap.ext.vscode').load_launchjs(nil, { node = { 'javascript', 'typescript' }})

dap.adapters.node = {
  type = 'executable',
	command = 'node-debug2-adapter',
}

dapui.setup({
  layouts = {
    {
      elements = {
        { id = "scopes", size = 0.4 },
        { id = "watches", size = 0.3 },
        { id = "stacks", size = 0.15 },
        { id = "breakpoints", size = 0.15 },
      },
      size = 50, -- 40 columns
      position = "left",
    },
    {
      elements = { "repl", "console", },
      size = 0.25, -- 25% of total lines
      position = "bottom",
    }
  }
})

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
  vim.api.nvim_command('NvimTreeClose')
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
  dap.repl.close()
  vim.api.nvim_command('NvimTreeOpen')
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
  dap.repl.close()
  vim.api.nvim_command('NvimTreeClose')
end

vim.fn.sign_define('DapBreakpoint',{ text ='', texthl ='DapUIStop', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='', texthl ='DapUIPlayPause', linehl ='', numhl =''})
