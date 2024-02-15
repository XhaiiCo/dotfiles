-- Save
vim.keymap.set("n", "<C-S>", "<CMD>w<CR>", { silent = true, desc = "Save file" })

-- Window cursor movement
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", silent = true })

-- Resize window
vim.keymap.set("n", "<C-Up>", "<CMD>resize +2<CR>", { desc = "Increase window height", silent = true })
vim.keymap.set("n", "<C-Down>", "<CMD>resize -2<CR>", { desc = "Decrease window height", silent = true })
vim.keymap.set("n", "<C-Left>", "<CMD>vertical resize -2<CR>", { desc = "Decrease window width", silent = true })
vim.keymap.set("n", "<C-Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase window width", silent = true })

-- Others
vim.keymap.set("n", "<leader>wy", "<C-W>s", { desc = "Split window below", silent = true })

vim.keymap.set("n", "<leader>wx", "<C-W>v", { desc = "Split window right", silent = true })

