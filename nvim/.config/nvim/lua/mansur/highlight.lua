vim.g.enable_bold_font = 1
vim.g.enable_italic_font = 1
vim.api.nvim_set_option('background', 'dark')
vim.cmd('colorscheme hybrid_reverse')

local utils = require('mansur.utils')
local bg = utils.bg
local hi = utils.hi

local bgNormal = bg('Normal')
local bgInactive = '#26373c'

vim.cmd('hi BufferCurrent guibg=' .. bgNormal)
vim.cmd('hi BufferCurrentSign guibg=' .. bgNormal)
vim.cmd('hi BufferTabpageFill guibg=' .. bgInactive)
vim.cmd('hi BufferInactive guibg=' .. bgInactive)
vim.cmd('hi BufferInactiveSign guibg=' .. bgInactive)
vim.cmd('hi BufferInactiveMod guibg=' .. bgInactive)
vim.cmd('hi BufferVisible guibg=' .. bgInactive)
vim.cmd('hi BufferVisibleSign guibg=' .. bgInactive)
vim.cmd('hi BufferVisibleMod guibg=' .. bgInactive)

vim.cmd('hi DiagnosticHint guifg=#666666')
vim.cmd('hi DiagnosticError guifg=#F44336')
vim.cmd('hi DiagnosticWarn guifg=#b27300')

hi('NvimTreeGitDirty', { fg = "#f0c674" })
hi('NvimTreeGitNew', { fg = "#b5bd68" })
hi('NvimTreeGitDeleted', { link = "NvimTreeLspDiagnosticsError" })
