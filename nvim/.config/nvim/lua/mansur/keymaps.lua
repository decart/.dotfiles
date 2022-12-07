local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader to <Space>
keymap('', '<Space>', '<Nop>')
vim.g.mapleader = ' '

-- Save by <C-s>
keymap('i', '<C-s>', '<esc>:w<cr>', opts)
keymap('n', '<C-s>', '<esc>:w<cr>', opts)

-- Disable yank of some commands
keymap('n', 'x', '"_x', opts)
keymap('n', 'c', '"_c', opts)
keymap('n', 'D', '"_D', opts)
keymap('v', 'x', '"_x', opts)
keymap('v', 'c', '"_c', opts)
keymap('v', 'D', '"_D', opts)

-- Window navigation
keymap('n', '<C-h>', ':wincmd h<cr>', opts)
keymap('n', '<C-j>', ':wincmd j<cr>', opts)
keymap('n', '<C-k>', ':wincmd k<cr>', opts)
keymap('n', '<C-l>', ':wincmd l<cr>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<cr>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<cr>', opts)
keymap('n', '<C-Up>', ':resize -2<cr>', opts)
keymap('n', '<C-Down>', ':resize +2<cr>', opts)
keymap('n', '<C-\\>', ':vsplit %<cr>', opts)
keymap('n', '<A-\\>', ':split %<cr>', opts)

-- Buffer navigation
keymap('n', '<A-o>', ':buffer #<cr>', opts)
keymap('n', '<A-,>', ':BufferPrevious<cr>', opts) -- Plugin barbar.nvim
keymap('n', '<A-.>', ':BufferNext<cr>', opts) -- Plugin barbar.nvim
keymap('n', '<C-w>', ':BufferClose<cr>', opts) -- Plugin barbar.nvim

-- Indentation
keymap('v', '>', '>gv', opts)
keymap('v', '<', '<gv', opts)

-- Move lines
keymap('n', '<A-j>', ':m .+1<cr>==', opts)
keymap('n', '<A-k>', ':m .-2<cr>==', opts)
keymap('v', '<A-j>', ':move \'>+1<CR>gv-gv', opts)
keymap('v', '<A-k>', ':move \'<-2<CR>gv-gv', opts)

-- Expand selection
keymap('v', 'K', '<Plug>(expand_region_expand)', opts)
keymap('v', 'J', '<Plug>(expand_region_shrink)', opts)

-- Neotree
keymap('n', '<C-b>', ':Neotree toggle reveal_force_cwd<cr>', opts)

-- HOP
keymap('n', 's', ':HopChar1<cr>', opts)
