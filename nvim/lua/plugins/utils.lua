return {
  {
    "m4xshen/autoclose.nvim",
    event = "BufRead",
    config = function()
      require("autoclose").setup()
    end,
  },
  {
    "folke/which-key.nvim", -- Load the which-key plugin
    -- optional = true, -- This plugin is optional
    opts = require("plugins.config.whichkey-config"),
  },
  {
    {
      "gelguy/wilder.nvim",
      dependencies = {
        "catppuccin/nvim",
      },
      config = require("plugins.config.wilder-config")
    },
  },
  {
    "OXY2DEV/markview.nvim",
    -- lazy = false, -- Recommended
    ft = "markdown", -- If you decide to lazy-load anyway

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local config = require("plugins.config.markview-config")
      require("markview").setup(config)
    end,
  },
  {
    "szw/vim-maximizer"
  },
  {
    "aznhe21/actions-preview.nvim",
    config = function()
      require("actions-preview").setup({
        backend = { "telescope" },
        telescope = vim.tbl_extend(
          "force",
          -- telescope theme: https://github.com/nvim-telescope/telescope.nvim#themes
          require("telescope.themes").get_ivy(),
          -- a table for customizing content
          {
            -- a function to make a table containing the values to be displayed.
            -- fun(action: Action): { title: string, client_name: string|nil }
            make_value = nil,

            -- a function to make a function to be used in `display` of a entry.
            -- see also `:h telescope.make_entry` and `:h telescope.pickers.entry_display`.
            -- fun(values: { index: integer, action: Action, title: string, client_name: string }[]): function
            make_make_display = nil,
          }
        ),
      })
    end,
  },
  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup()
    end
  },
  {
    "folke/trouble.nvim",
    tag = "v2.10.0",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "aaronik/treewalker.nvim",
    opts = {
      highlight = true,
      highlight_duration = 250,
    }
  }
}
