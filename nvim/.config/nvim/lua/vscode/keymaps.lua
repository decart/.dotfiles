local map = require('vscode.utils').map
local hop = require('hop')
local directions = require('hop.hint').HintDirection

map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '

-- Macros
map('n', 'Q', '@@')

-- Indentation
map('v', '>', '>gv')
map('v', '<', '<gv')

-- Disable yank of some commands
map('n', 'x', '"_x')
map('n', 'c', '"_c')
map('n', 'D', '"_D')
map('v', 'x', '"_x')
map('v', 'c', '"_c')
map('v', 'D', '"_D')

map('n', '/', ':HopPattern<CR>')
map('n', 's', ':HopChar1<CR>')

map('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end)

map('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end)

map('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_of = -1 })
end)

map('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_of = 1 })
end)

