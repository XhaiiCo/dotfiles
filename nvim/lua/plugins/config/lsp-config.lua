return function()
  -- Default server
  local servers_list = {
    "cssls",
    "html",
    "jsonls",
    "lua_ls",
    "tsserver",
    "csharp_ls",
    "angularls",
    "sqlls"
  }

  require("mason").setup()
  require("mason-lspconfig").setup({
    ensure_installed = servers_list,
  })

  local cmp = require("cmp")
  local luasnip = require("luasnip")
  local capabilities = require("cmp_nvim_lsp").default_capabilities()
  local lsp_config = require("lspconfig")

  require 'lspconfig'.csharp_ls.setup {}
  require 'lspconfig'.angularls.setup {}

  -- Completion engine setup
  cmp.setup({
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },
    }, {
      { name = "buffer" },
    }),
  })
  -- End completion engine setup

  -- Diagnostic customization
  vim.diagnostic.config({
    float = {
      source = true
    },
  })

  for _, value in pairs(servers_list) do
    local server = lsp_config[value]
    server.setup({
      capabilities = capabilities,
      on_attach = on_attach_callback,
    })
  end
end
