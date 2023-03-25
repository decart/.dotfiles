local cmp = require("cmp")
local lspkind = require("lspkind")
local luasnip = require("luasnip")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

vim.o.completeopt = "menuone,noselect"

lspkind.init({
  mode = "symbol_text",
  maxwidth = 45,
  symbol_map = {
    Class         = "",
    Color         = "",
    Constant      = "",
    Constructor   = "",
    Enum          = "",
    EnumMember    = "",
    Event         = "",
    Field         = "ﰠ",
    File          = "",
    Folder        = "",
    Function      = "",
    Interface     = "",
    Keyword       = "",
    Method        = "ƒ",
    Module        = "",
    Operator      = "",
    Property      = "",
    Reference     = "",
    Snippet       = "",
    Struct        = "פּ",
    Text          = "",
    TypeParameter = "",
    Unit          = "",
    Value         = "",
    Variable      = "",
  },
})

cmp.setup({
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local formatter = lspkind.cmp_format()

      local kind = formatter(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })

      kind.kind = " " .. (strings[1] or "") .. " "
      kind.menu = "    " .. (strings[2] or "")

      return kind
    end,
  },

  mapping = {
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "treesitter" },
    { name = "buffer" },
    { name = "luasnip" },
    { name = "nvim_lua" },
    { name = "path" },
    { name = "nvim_lsp_signature_help" },
  },
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer" },
  },
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})

-- Insert `(` after select function or method item
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

require("luasnip.loaders.from_vscode").lazy_load()
