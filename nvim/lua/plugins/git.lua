local git = {
        {
                "kdheepak/lazygit.nvim",
                commit = "1e08e3f5ac1152339690140e61a4a32b3bdc7de5",
                dependencies = {
                        "nvim-lua/plenary.nvim",
                },
                keys = {
                        { "<leader>gg", "<CMD>LazyGit<CR>", desc = "Open LazyGit" },
                },

                config = function()
                        vim.g.lazygit_floating_window_border_chars = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }
                end,
        },
        {
                "lewis6991/gitsigns.nvim",
                event = "BufRead",
                config = function()
                        local config = require("plugins.config.gitsigns-config")
                        require("gitsigns").setup(config)
                end,
        },
}

return git
