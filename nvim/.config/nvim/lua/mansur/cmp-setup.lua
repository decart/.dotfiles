local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

vim.o.completeopt = 'menuone,noselect'

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup {
  formatting = {
  format = lspkind.cmp_format({
      with_text = true,
    })
  },

  mapping = {
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'treesitter' },
    { name = 'buffer' },
  },
}

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})


-- Insert `(` after select function or method item
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

