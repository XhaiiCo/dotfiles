return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local config = require("plugins.config.oil-config")
    require("oil").setup(config)
  end,
}
