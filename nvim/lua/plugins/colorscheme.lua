return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd("colorscheme tokyonight-storm")
  end
}

-- return {
--   -- catppuccin
--   {
--     "catppuccin/nvim",
--     tag = "v1.6.0",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       local catppuccin = require("catppuccin")
--
--       catppuccin.setup({
--         flavour = "mocha",
--         transparent_background = true,
--       })
--
--       vim.cmd("colorscheme catppuccin")
--     end,
--   }
-- }
