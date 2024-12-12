return {
  {
    "m4xshen/autoclose.nvim",
    event = "BufRead",
    config = function()
      require("autoclose").setup()
    end,
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
  }
}
