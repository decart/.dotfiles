require('nvim-tree').setup {
  sync_root_with_cwd = true,
  view = {
    width = 40,
    mappings = {
      list = {
        { key = '?', action = 'toggle_help' }
      }
    }
  },
  renderer = {
    indent_width = 2,
    indent_markers = { enable = true },
    highlight_git = true,
    icons = {
      git_placement = 'signcolumn',
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "",
          untracked = "",
          deleted = "",
          ignored = "",
        }
      }
    }
  },
  actions = {
    open_file = {
      resize_window = true
    }
  }
}
