require('nvim-treesitter.install').compilers = { "clang" }
require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { 'vim' }
  },
  indent = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  autotag = {
    enable = true,
  }
}
