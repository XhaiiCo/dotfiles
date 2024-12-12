return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "meuter/lualine-so-fancy.nvim",
      "AndreM222/copilot-lualine",
    },
    config = function()
      local config = require("plugins.config.lualine-config")
      require("lualine").setup(config)
    end,
  },
  {
    "utilyre/barbecue.nvim",
    event = "BufRead",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
    opts = {},
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "BufRead",
    config = function()
      local config = require("plugins.config.inline-diagnostics-config")
      require("tiny-inline-diagnostic").setup(config)
    end,
  },
  {
    "rachartier/tiny-devicons-auto-colors.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    config = function()
      local theme_colors = require("catppuccin.palettes").get_palette("macchiato")
      require("tiny-devicons-auto-colors").setup({
        colors = theme_colors,
      })
    end,
  },
  {
    'nvimdev/dashboard-nvim',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    event = 'VimEnter',
    config = require("plugins.config.dashboard-config")
  }
}
