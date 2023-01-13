local keymap = require('mansur.utils').map
local dap = require('dap')

-- Leader to <Space>
keymap('', '<Space>', '<Nop>')
vim.g.mapleader = ' '

-- Macros
keymap('n', 'Q', '@@')

-- Disable yank of some commands
keymap('n', 'x', '"_x')
keymap('n', 'c', '"_c')
keymap('n', 'D', '"_D')
keymap('v', 'x', '"_x')
keymap('v', 'c', '"_c')
keymap('v', 'D', '"_D')

-- Move by soft wrapped lines
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })

-- Window navigation
keymap('n', '<C-h>', ':wincmd h<cr>')
keymap('n', '<C-j>', ':wincmd j<cr>')
keymap('n', '<C-k>', ':wincmd k<cr>')
keymap('n', '<C-l>', ':wincmd l<cr>')
keymap('n', '<C-Left>', ':vertical resize -5<cr>')
keymap('n', '<C-Right>', ':vertical resize +5<cr>')
keymap('n', '<C-Up>', ':resize -5<cr>')
keymap('n', '<C-Down>', ':resize +5<cr>')
keymap('n', '<C-\\>', ':vsplit %<cr>')
keymap('n', '<A-\\>', ':split %<cr>')

-- Telescope
keymap('n', '<C-p>', ':Telescope find_files<cr>')
keymap('n', '<C-f>', ':Telescope live_grep<cr>')

-- Debug
keymap('n', '<F5>', dap.continue)
keymap('n', '<F10>', dap.step_over)
keymap('n', '<F11>', dap.step_into)
keymap('n', '<F12>', dap.step_out)
keymap('n', '<S-F5>', dap.terminate)

-- Buffer navigation
keymap('n', '<A-o>', ':buffer #<cr>')
keymap('n', '<A-,>', ':BufferPrevious<cr>') -- Plugin barbar.nvim
keymap('n', '<A-.>', ':BufferNext<cr>') -- Plugin barbar.nvim
keymap('n', '<C-w>', ':BufferClose<cr>') -- Plugin barbar.nvim

-- Indentation
keymap('v', '>', '>gv')
keymap('v', '<', '<gv')

-- Move lines
keymap('n', '<A-j>', ':m .+1<cr>==')
keymap('n', '<A-k>', ':m .-2<cr>==')
keymap('v', '<A-j>', ':move \'>+1<CR>gv-gv')
keymap('v', '<A-k>', ':move \'<-2<CR>gv-gv')

-- Expand selection
keymap('v', 'K', '<Plug>(expand_region_expand)')
keymap('v', 'J', '<Plug>(expand_region_shrink)')

-- Neotree
-- keymap('n', '<C-b>', ':Neotree toggle<cr>')
keymap('n', '<C-b>', ':NvimTreeToggle<cr>')

-- HOP
keymap('n', 's', ':HopChar1<cr>')
