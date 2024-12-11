return function()
  -- Default server
  local servers_list = {
    "cssls",
    "html",
    "jsonls",
    "lua_ls",
    "ts_ls",
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

  -- Global key mapping
  vim.keymap.set("n", "ge", vim.diagnostic.open_float, { desc = "open diagnostic popup" })
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })

  -- Callback executed when a server is attached to a buffer
  local on_attach_callback = function(client, buffer)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration", buffer = buffer })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition", buffer = buffer })
    vim.keymap.set("n", "Q", vim.lsp.buf.hover, { desc = "Hover", buffer = buffer })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation", buffer = buffer })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename", buffer = buffer })
    vim.keymap.set("n", "<leader>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, { desc = "List workspace folders", buffer = buffer })
    vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "Go to type definition", buffer = buffer })
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action", buffer = buffer })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Check references", buffer = buffer })
  end

  for _, value in pairs(servers_list) do
    local server = lsp_config[value]
    server.setup({
      capabilities = capabilities,
      on_attach = on_attach_callback,
    })
  end
end
