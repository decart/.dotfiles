vim.filetype.add({
  pattern = {
    ['.*/etc/php/[%d%.]*/fpm/.*'] = 'dosini' -- PHP ini files
  }
})
