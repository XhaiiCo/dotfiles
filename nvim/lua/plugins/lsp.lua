return {
  {
    "williamboman/mason.nvim",
    tag = "v1.8.3",
    dependencies = {
      { "neovim/nvim-lspconfig",             tag = "v0.1.7" },
      { "williamboman/mason-lspconfig.nvim", tag = "v1.26.0" },
      { "hrsh7th/nvim-cmp",                  commit = "538e37ba87284942c1d76ed38dd497e54e65b891" },
      { "hrsh7th/cmp-nvim-lsp",              commit = "5af77f54de1b16c34b23cba810150689a3a90312" },
      { "L3MON4D3/LuaSnip",                  tag = "v2.2.0" },
    },
    config = require("plugins.config.lsp-config")
  },
  {
    "stevearc/conform.nvim", -- Format plugin
    lazy = false,
    opts = require("plugins.config.conform-config")
  }
}
