-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   branch = "v3.x",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-tree/nvim-web-devicons",
--     "MunifTanjim/nui.nvim",
--   },
--
--   keys = {
--     { "<leader>e", "<cmd>Neotree toggle reveal position=float<cr>", desc = "Toggle Neotree" },
--   },
--   config = function()
--     require("neo-tree").setup({
--       event_handlers = {
--         {
--           event = "neo_tree_buffer_enter",
--           handler = function()
--             vim.opt.relativenumber = true
--           end,
--         }
--       }
--     })
--   end
-- }
return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local config = require("plugins.config.oil-config")
    require("oil").setup(config)
  end,
}
