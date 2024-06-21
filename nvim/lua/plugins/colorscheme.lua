-- return {
--         "folke/tokyonight.nvim",
--         lazy = false,
--         priority = 1000,
--         opts = {},
--         config = function()
--                 vim.cmd("colorscheme tokyonight-storm")
--         end
-- }

return {
        "oxfist/night-owl.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
                -- load the colorscheme here
                require("night-owl").setup()
                vim.cmd("colorscheme night-owl")
        end,
}

-- return {
--         -- catppuccin
--         {
--                 "catppuccin/nvim",
--                 tag = "v1.6.0",
--                 lazy = false,
--                 priority = 1000,
--                 config = function()
--                         local catppuccin = require("catppuccin")
--
--                         catppuccin.setup({
--                                 flavour = "mocha",
--                                 transparent_background = true,
--                         })
--
--                         vim.cmd("colorscheme catppuccin")
--                 end,
--         }
-- }
