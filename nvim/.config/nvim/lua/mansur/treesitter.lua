require('nvim-treesitter.install').compilers = { "clang" }
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'bash',
    'c',
    'cpp',
    'css',
    'diff',
    'dockerfile',
    'git_config',
    'git_rebase',
    'gitattributes',
    'gitcommit',
    'gitignore',
    'html',
    'http',
    'ini',
    'javascript',
    'jsdoc',
    'json5',
    'jsonc',
    'lua',
    'luadoc',
    'markdown',
    'markdown_inline',
    'php',
    'phpdoc',
    'prisma',
    'python',
    'regex',
    'scss',
    'sql',
    'todotxt',
    'typescript',
    'vim',
    'vimdoc',
    'vue',
    'yaml',
  },
  auto_install = true,
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
