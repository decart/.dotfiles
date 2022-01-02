vim.g.floaterm_width = 0.95
vim.g.floaterm_height = 0.95
vim.g.floaterm_autoclose = 1
vim.g.floaterm_borderchars = ''
vim.g.floaterm_title = ''
vim.g.floaterm_borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' }

-- vim.highlight.create('Floaterm', { guibg = '#3c3836' })
-- vim.highlight.create('FloatermBorder', { guibg = '#3c3836' })
-- vim.highlight.link('Floaterm', 'Pmenu')
-- vim.highlight.link('FloatermBorder', 'Pmenu')
vim.highlight.link('Floaterm', 'MsgArea')
vim.highlight.link('FloatermBorder', 'MsgArea')

vim.cmd [[
  command! Git FloatermNew gitui
]]

