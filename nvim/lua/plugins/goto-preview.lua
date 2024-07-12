return {
        'rmagatti/goto-preview',
        -- event = "VeryLazy",	
        keys = {

                { '<leader>pd', function() require("goto-preview").goto_preview_definition() end,      desc = "Preview Definition" },
                { '<leader>pi', function() require("goto-preview").goto_preview_type_definition() end, desc = "Preview Implementation" },
                { '<leader>pc', function() require("goto-preview").close_all_win() end,                desc = "Close Previews" },
        },
        config = function()
                require('goto-preview').setup()

                vim.keymap.set('n', '<leader>pd', '<cmd>lua require("goto-preview").goto_preview_definition()<CR>',
                        { desc = "Preview Definition", silent = true })
                vim.keymap.set('n', '<leader>pi', '<cmd>lua require("goto-preview").goto_preview_type_definition()<CR>',
                        { desc = "Preview Implementation", silent = true })
                vim.keymap.set('n', '<leader>pc', '<cmd>lua require("goto-preview").close_all_win()<CR>',
                        { desc = "Close Previews", silent = true })
        end
}
