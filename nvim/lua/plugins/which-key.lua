return {
        "folke/which-key.nvim",
        opts = {
                icons = { group = vim.g.icons_enabled and "" or "+", separator = "" },
                disable = { filetypes = { "TelescopePrompt" } },
        },
        init = function()
                local wk = require("which-key")
                wk.register({
                        f = {
                                name = "file"
                        },
                        c = {
                                name = "code"
                        },
                        g = {
                                name = "git"
                        },
                        p = {
                                name = "preview"
                        },
                        r = {
                                name = "rename"
                        },
                        t = {
                                name = "Trouble/Tab"
                        },
                        w = {
                                name = "window"
                        }
                }, { prefix = "<leader>" })


                vim.o.timeout = true
                vim.o.timeoutlen = 100
        end,
        config = true,
}
