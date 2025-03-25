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
    "folke/noice.nvim",
    version = "4.2.1",
    dependencies = {
      "muniftanjim/nui.nvim",
    },
    config = function()
      local config = require("plugins.config.noice-config")
      local noice = require("noice")
      noice.setup(config)
    end,
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
  },
  {
    "brenoprata10/nvim-highlight-colors",
    event = "BufRead",
    config = function()
      require("nvim-highlight-colors").setup({
        render = "background",
        virtual_symbol = "  ",
        enable_tailwind = true,
      })
    end,
  },
  { -- Color of CursorLine and CursorLineNr.
    'svampkorg/moody.nvim',
    event = { 'ModeChanged', 'BufWinEnter', 'WinEnter' },
    dependencies = {
      'kevinhwang91/nvim-ufo',
    },
    opts = require("plugins.config.moody-config")
  },
  {
    "anuvyklack/windows.nvim",
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
    },
    config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require('windows').setup()
    end
  },
  {-- Cursor animation
    "sphamba/smear-cursor.nvim",
    opts = {
      cursor_color = "none",
      hide_target_hack = true
    },
  },
}
