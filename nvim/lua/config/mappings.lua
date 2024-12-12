-- Format file
vim.keymap.set("n", "<leader>F", "<CMD>lua require('conform').format({ lsp_fallback = true, async = true })<CR>",
  { desc = "Format code" })
-- File explorer
vim.keymap.set("n", "<leader>e", "<CMD>:Oil<CR>", { desc = "File explorer" })
vim.keymap.set("n", "<leader>d", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- Lazygit
vim.keymap.set("n", "<leader>gg", "<CMD>LazyGit<CR>", { desc = "Open LazyGit" })

-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<space>ff", builtin.find_files)
vim.keymap.set("n", "<space>en", function()
  builtin.find_files {
    cwd = vim.fn.stdpath("config")
  }
end)
vim.keymap.set("n", "<space>fg", builtin.live_grep)
vim.keymap.set("n", "<space>fh", builtin.help_tags)
vim.keymap.set("n", "<leader>fo", function()
  builtin.live_grep({
    grep_open_files = true,
    prompt_title = "Live Grep in Open Files",
  })
end, { silent = true })

vim.keymap.set("n", "<up>", "<nop>", { silent = true })
vim.keymap.set("n", "<down>", "<nop>", { silent = true })
vim.keymap.set("n", "<left>", "<nop>", { silent = true })
vim.keymap.set("n", "<right>", "<nop>", { silent = true })

-- Remove macro key
vim.keymap.set("n", "q", "<nop>", { silent = true })

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch", silent = true })

-- Save
vim.keymap.set("n", "<C-S>", "<CMD>w<CR>", { silent = true, desc = "Save file" })

-- Window cursor movement
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", silent = true })

-- Resize window
vim.keymap.set("n", "<S-Up>", "<CMD>resize +2<CR>", { desc = "Increase window height", silent = true })
vim.keymap.set("n", "<S-Down>", "<CMD>resize -2<CR>", { desc = "Decrease window height", silent = true })
vim.keymap.set("n", "<S-Left>", "<CMD>vertical resize -2<CR>", { desc = "Decrease window width", silent = true })
vim.keymap.set("n", "<S-Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase window width", silent = true })

-- Others
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", silent = true })
vim.keymap.set("n", "<leader>wy", "<C-W>s", { desc = "Split window below", silent = true })
vim.keymap.set("n", "<leader>wx", "<C-W>v", { desc = "Split window right", silent = true })

-- Tab
vim.keymap.set("n", "<leader>tt", "<CMD>tabnew<CR>", { desc = "New Tab", silent = true })
vim.keymap.set("n", "<leader>td", "<CMD>tabclose<CR>", { desc = "Close Tab", silent = true })
vim.keymap.set("n", "<leader>tr", "<CMD>TroubleToggle<CR>", { desc = "Toggle trouble", silent = true })
vim.keymap.set("n", "<leader>ta", "<CMD>TroubleToggle workspace_diagnostics<CR>",
  { desc = "Toggle trouble global", silent = true })
vim.keymap.set("n", "<leader>tf", "<CMD>TroubleToggle quickfix<CR>", { desc = "Fix with trouble", silent = true })
vim.keymap.set("n", "<S-h>", "<cmd>tabprevious<cr>", { desc = "Prev buffer", silent = true })
vim.keymap.set("n", "<S-l>", "<cmd>tabnext<cr>", { desc = "Next buffer", silent = true })
vim.keymap.set("n", "<S-j>", "<cmd>-tabmove<cr>", { desc = "Move tab to left", silent = true, noremap = true })
vim.keymap.set("n", "<S-k>", "<cmd>+tabmove<cr>", { desc = "Move tab to right", silent = true })
