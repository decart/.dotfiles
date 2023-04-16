require("mansur.lsp.null-ls")

local lspconfig = require("lspconfig")
local telescope = require("telescope.builtin")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local map = require("mansur.utils").map

local M = {}

M.servers = { 
  "pyright",
  "tsserver",
  "jsonls",
  "html",
  "cssls",
  "emmet_ls",
  "lua_ls",
  "phpactor",
  "vimls",
  "volar",
  "tailwindcss",
  "prismals",
}

function M.on_attach()
  map("n", "gD", vim.lsp.buf.declaration)
  map("n", "gd", telescope.lsp_definitions)
  map("n", "gr", telescope.lsp_references)
  map("n", "gi", telescope.lsp_implementations)
  map("n", "<A-p>", vim.lsp.buf.hover)
end

function M.setup_servers()
  require("mason-lspconfig").setup({
    ensure_installed = M.servers,
    automatic_installation = true,
  })

  require("mason-lspconfig").setup_handlers({
    function(server_name) -- default handler (optional)
      require("lspconfig")[server_name].setup({
        on_attach = M.on_attach,
        capabilities = capabilities,
      })
    end,

    -- Next, you can provide a dedicated handler for specific servers.
    ["lua_ls"] = function()
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
              },
            },
          },
        },
      })
    end,

    ["emmet_ls"] = function()
      lspconfig.emmet_ls.setup({
        filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
      })
    end,
  })
end

return M
