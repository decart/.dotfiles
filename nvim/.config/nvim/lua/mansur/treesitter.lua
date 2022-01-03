require('nvim-treesitter.install').compilers = { "clang" }
require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  highlight = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
