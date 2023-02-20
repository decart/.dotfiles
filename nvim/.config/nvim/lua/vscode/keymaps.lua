local map = require('vscode.utils').map
local hop = require('hop')
local directions = require('hop.hint').HintDirection

map('i', 'jj', '<Esc>')
map('i', 'jk', '<Esc>')
map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '


-- Macros
map('n', 'Q', '@@')

map('n', 'U', '<C-r>')

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

map('n', '?', ":call VSCodeNotify('actions.find')<CR>")
map('n', '/', ':HopPattern<CR>')
map('n', 's', ':HopChar2<CR>')

map('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})

map('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})

map('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})

map('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})

-- Leader
map('n', '<leader>sa', 'ggVG') -- Select all
map('n', '<leader>fn', ":call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>") -- New untitled file
map('n', '<leader>fs', ":call VSCodeNotify('workbench.action.files.saveAll')<CR>") -- Save all
map('n', '<leader>fr', ":call VSCodeNotify('workbench.action.openRecent')<CR>") -- Open recent
map('n', '<leader>ft', ":call VSCodeNotify('workbench.action.files.showActiveFileInExplorer')<CR>") -- Show active file in explorer

map('n', '<leader>cf', ":call VSCodeNotify('editor.action.formatDocument')<CR>") -- Format code
map('n', '<leader>cl', ":call VSCodeNotify('workbench.action.editor.changeLanguageMode')<CR>") -- Change file language
map('n', '<leader>ce', ":call VSCodeNotify('editor.action.organizeImports')<CR>") -- Organize imports
map('n', '<leader>cr', ":call VSCodeNotify('editor.action.rename')<CR>") -- Rename symbol
map('n', '<leader>cx', ":call VSCodeNotify('editor.action.refactor')<CR>") -- Refactor
map('n', '<leader>cf', ":call VSCodeNotify('editor.action.formatDocument')<CR>") -- Format code

map('n', '<leader>gc', ":call VSCodeNotify('git.commit')<CR>") -- Git commit
map('n', '<leader>gp', ":call VSCodeNotify('git.push')<CR>") -- Git push
map('n', '<leader>gl', ":call VSCodeNotify('git.pull')<CR>") -- Git pull
map('n', '<leader>gs', ":call VSCodeNotify('workbench.view.scm')<CR>") -- Git status
