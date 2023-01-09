vim.g.enable_bold_font = 1
vim.g.enable_italic_font = 1
vim.cmd('colorscheme hybrid_reverse')

local utils = require('mansur.utils')
local bg = utils.bg
local hiGroups = utils.hi_table

local bgNormal = bg('Normal')
local bgInactive = '#26373c'

hiGroups({
  BufferCurrent =       { bg = bgNormal },
  BufferCurrentSign =   { bg = bgNormal },
  BufferTabpageFill =   { bg = bgInactive },
  BufferInactive =      { bg = bgInactive },
  BufferInactiveSign =  { bg = bgInactive },
  BufferInactiveMod =   { bg = bgInactive },
  BufferVisible =       { bg = bgInactive },
  BufferVisibleSign =   { bg = bgInactive },
  BufferVisibleMod =    { bg = bgInactive },

  DiagnosticHint =  { fg = "#666666" },
  DiagnosticError = { fg = "#F44336" },
  DiagnosticWarn =  { fg = "#b27300" },

  NvimTreeGitDirty =    { fg = "#f0c674" },
  NvimTreeGitNew =      { fg = "#b5bd68" },
  NvimTreeGitDeleted =  { link = "NvimTreeLspDiagnosticsError" },

  PmenuSel =  { bg = "#282C34", fg = "NONE" },
  Pmenu =     { fg = "#C5CDD9", bg = "#22252A" },

  CmpItemAbbrDeprecated = { fg = "#7E8294", bg = "NONE", strikethrough = true },
  CmpItemAbbrMatch =      { fg = "#82AAFF", bg = "NONE", bold = true },
  CmpItemAbbrMatchFuzzy = { fg = "#82AAFF", bg = "NONE", bold = true },
  CmpItemMenu =           { fg = "#C792EA", bg = "NONE", italic = true },

  CmpItemKindField =    { fg = "#000000", bg = "#B5585F" },
  CmpItemKindProperty = { fg = "#000000", bg = "#B5585F" },
  CmpItemKindEvent =    { fg = "#000000", bg = "#B5585F" },

  CmpItemKindText =     { fg = "#000000", bg = "#9FBD73" },
  CmpItemKindEnum =     { fg = "#000000", bg = "#9FBD73" },
  CmpItemKindKeyword =  { fg = "#000000", bg = "#9FBD73" },

  CmpItemKindConstant =     { fg = "#000000", bg = "#D4BB6C" },
  CmpItemKindConstructor =  { fg = "#000000", bg = "#D4BB6C" },
  CmpItemKindReference =    { fg = "#000000", bg = "#D4BB6C" },

  CmpItemKindFunction = { fg = "#000000", bg = "#A377BF" },
  CmpItemKindStruct =   { fg = "#000000", bg = "#A377BF" },
  CmpItemKindClass =    { fg = "#000000", bg = "#A377BF" },
  CmpItemKindModule =   { fg = "#000000", bg = "#A377BF" },
  CmpItemKindOperator = { fg = "#000000", bg = "#A377BF" },

  CmpItemKindVariable = { fg = "#000000", bg = "#7E8294" },
  CmpItemKindFile =     { fg = "#000000", bg = "#7E8294" },

  CmpItemKindUnit =     { fg = "#000000", bg = "#D4A959" },
  CmpItemKindSnippet =  { fg = "#000000", bg = "#D4A959" },
  CmpItemKindFolder =   { fg = "#000000", bg = "#D4A959" },

  CmpItemKindMethod =     { fg = "#000000", bg = "#6C8ED4" },
  CmpItemKindValue =      { fg = "#000000", bg = "#6C8ED4" },
  CmpItemKindEnumMember = { fg = "#000000", bg = "#6C8ED4" },

  CmpItemKindInterface =      { fg = "#000000", bg = "#58B5A8" },
  CmpItemKindColor =          { fg = "#000000", bg = "#58B5A8" },
  CmpItemKindTypeParameter =  { fg = "#000000", bg = "#58B5A8" },
})
