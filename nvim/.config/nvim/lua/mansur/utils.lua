local M = {}

M.map = function(mode, keybinds, command, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.api.nvim_set_keymap(mode, keybinds, command, options)
end

M.bg = function(group, default)
  local colors = vim.api.nvim_get_hl_by_name(group, 1)
  if (colors.background) then
    return string.format('#%x', colors.background)
  end

  return default
end

-- val table:
--   fg (or foreground): color name or "#RRGGBB", see note.
--   bg (or background): color name or "#RRGGBB", see note.
--   sp (or special): color name or "#RRGGBB"
--   blend: integer between 0 and 100
--   bold: boolean
--   standout: boolean
--   underline: boolean
--   undercurl: boolean
--   underdouble: boolean
--   underdotted: boolean
--   underdashed: boolean
--   strikethrough: boolean
--   italic: boolean
--   reverse: boolean
--   nocombine: boolean
--   link: name of another highlight group to link to, see |:hi-link|.
--   default: Don't override existing definition |:hi-default|
--   ctermfg: Sets foreground of cterm color |ctermfg|
--   ctermbg: Sets background of cterm color |ctermbg|
--   cterm: cterm attribute map, like |highlight-args|. If not set, cterm attributes will match those from the attribute map documented above.
M.hi = function(name, val)
  vim.api.nvim_set_hl(0, name, val)
end


return M
