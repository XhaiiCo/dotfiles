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
  }
}
