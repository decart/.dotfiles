local filenameComponent = {
  'filename',
  path = 1,
  symbols = { modified = '●', readonly = '', unnamed = '', newfile = '' }
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'dracula-nvim',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      winbar = { 'neo-tree', 'aerial' }
    },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = { 'diagnostics' },
    lualine_x = {
      'encoding',
      {
        'fileformat',
        symbols = { unix = 'LF', -- e712
          dos = 'CRLF',  -- e70f
          mac = '',  -- e711
        }
      },
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = nil,
  winbar = {
    lualine_c = {
      { 'filetype', icon_only = true, separator = { left = '', right = ''} },
      filenameComponent,
      'aerial'
    },
  },
  inactive_winbar  = {
    lualine_c = {
      { 'filetype', icon_only = true, separator = { left = '', right = ''} },
      filenameComponent
    },
  },
  tabline = {},
  extensions = {
    'nvim-tree',
    'neo-tree',
    'toggleterm',
    'nvim-dap-ui',
    'aerial',
  }
}
