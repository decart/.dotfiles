local telescope = require('telescope')
telescope.setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
    },
    file_ignore_patterns = { 'node_modules' },
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = 'top',
      width = 0.9
    }
  },
  extensions = {
    ['ui-select'] = {
      require("telescope.themes").get_dropdown()
    },
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
}

telescope.load_extension('fzf')
telescope.load_extension('ui-select')
telescope.load_extension('project')
telescope.load_extension('aerial')
