local theme = {
  {
    "catppuccin/nvim",
    config = function()
      vim.cmd.colorscheme("catppuccin-macchiato")
      local config = require("plugins.config.catppuccin-config")
      require("catppuccin").setup(config)
    end,
  },
}

return theme
