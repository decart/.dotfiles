local keymap = require('mansur.utils').map

-- Leader to <Space>
keymap('', '<Space>', '<Nop>')
vim.g.mapleader = ' '

-- Macros
keymap('n', 'Q', '@@')

-- Save by <C-s>
-- keymap('i', '<C-s>', '<esc>:w<cr>')
-- keymap('n', '<C-s>', '<esc>:w<cr>')

-- Disable yank of some commands
keymap('n', 'x', '"_x')
keymap('n', 'c', '"_c')
keymap('n', 'D', '"_D')
keymap('v', 'x', '"_x')
keymap('v', 'c', '"_c')
keymap('v', 'D', '"_D')

-- Window navigation
keymap('n', '<C-h>', ':wincmd h<cr>')
keymap('n', '<C-j>', ':wincmd j<cr>')
keymap('n', '<C-k>', ':wincmd k<cr>')
keymap('n', '<C-l>', ':wincmd l<cr>')
keymap('n', '<C-Left>', ':vertical resize -2<cr>')
keymap('n', '<C-Right>', ':vertical resize +2<cr>')
keymap('n', '<C-Up>', ':resize -2<cr>')
keymap('n', '<C-Down>', ':resize +2<cr>')
keymap('n', '<C-\\>', ':vsplit %<cr>')
keymap('n', '<A-\\>', ':split %<cr>')

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
keymap('n', '<C-b>', ':Neotree toggle<cr>')

-- HOP
keymap('n', 's', ':HopChar1<cr>')
