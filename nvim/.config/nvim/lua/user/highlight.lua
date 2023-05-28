vim.g.enable_bold_font = 1
vim.g.enable_italic_font = 1

require('dracula').setup({
  italic_comment = true,
  overrides = {
    DiagnosticHint =  { fg = "#666666" },
    DiagnosticError = { fg = "#F44336" },
    DiagnosticWarn =  { fg = "#b27300" },

    DiagnosticVirtualTextHint = { fg = "#3e4452" },
    DiagnosticVirtualTextInfo = { fg = "#3e4452" },
    DiagnosticVirtualTextWarn = { fg = "#3e4452" },
    DiagnosticVirtualTextError = { fg = "#3e4452" },

    NvimTreeGitDirty =    { fg = "#f0c674" },
    NvimTreeGitNew =      { fg = "#b5bd68" },
    NvimTreeGitDeleted =  { link = "NvimTreeLspDiagnosticsError" },

    PmenuSel  = { bg = "#3e4452", fg = "NONE" },
    Pmenu     = { fg = "#C5CDD9", bg = "#202020" },

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

    BufferTabpageFill = { bg = "#44475c" },
    BufferInactive = { fg="#7c82a8", bg = "#44475c" },
    BufferInactiveSign = { fg="#7c82a8", bg = "#44475c" },
    BufferInactiveIndex = { fg="#7c82a8", bg = "#44475c" },
    BufferInactiveWARN = { fg="#f1fa8c", bg = "#44475c" },
    BufferInactiveERROR = { fg="#ff6e6e", bg = "#44475c" },
    BufferInactiveMod = { fg="#f1fa8c", bg = "#44475c" },
  }
})

vim.cmd('colorscheme dracula')

