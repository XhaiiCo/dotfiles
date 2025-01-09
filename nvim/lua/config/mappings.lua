vim.keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { silent = true, desc = " Search and replace " }
)

-- LSP
vim.keymap.set("n", "Q", vim.lsp.buf.hover, { desc = "Hover", buffer = buffer })
vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "Go to type definition", buffer = buffer })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action", buffer = buffer })
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { silent = true })
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { silent = true })
--vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { silent = true })
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", { silent = true })
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { silent = true })
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { silent = true })

-- Code action
vim.keymap.set({ "v", "n" }, "ca", require("actions-preview").code_actions)

-- Quickfix
vim.keymap.set("n", "<M-j>", "<CMD>cnext<CR>", { desc = "Open quickfix" })
vim.keymap.set("n", "<M-k>", "<CMD>cprev<CR>", { desc = "Open quickfix" })
vim.keymap.set("n", "<M-q>", "<CMD>cclose<CR>", { desc = "Close quickfix" })


-- goto preview
vim.keymap.set('n', '<leader>pd', '<cmd>lua require("goto-preview").goto_preview_definition()<CR>',
  { desc = "Preview Definition", silent = true })
vim.keymap.set('n', '<leader>pi', '<cmd>lua require("goto-preview").goto_preview_type_definition()<CR>',
  { desc = "Preview Implementation", silent = true })
vim.keymap.set('n', '<leader>pc', '<cmd>lua require("goto-preview").close_all_win()<CR>',
  { desc = "Close Previews", silent = true })

-- Maxime window
vim.keymap.set("n", "<leader>m", "<CMD>WindowsMaximize<CR>", { desc = "Maximize window" })

-- Toggle markview
vim.keymap.set('n', '<leader>em', "<CMD>:Markview toggleAll<CR>", { desc = "Toggle Markview preview" })

-- Format file
vim.keymap.set("n", "<leader>F", "<CMD>lua require('conform').format({ lsp_fallback = false, async = true })<CR>",
  { desc = "Format code" })

-- File explorer
vim.keymap.set("n", "<leader>d", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>td", "<CMD>tabnew | Oil<CR>", { desc = "Open Oil in new tab" })
vim.keymap.set("n", "<leader>wdx", "<CMD>vsplit | Oil<CR>", { desc = "Split window vertically and open Oil" })
vim.keymap.set("n", "<leader>wdy", "<CMD>split | Oil<CR>", { desc = "Split window horizontally and open Oil" })

-- Lazygit
vim.keymap.set("n", "<leader>gg", "<CMD>LazyGit<CR>", { desc = "Open LazyGit" })

-- Dooing
vim.keymap.set("n", "<leader>tl", "<CMD>Dooing<CR>", { desc = "Open Dooing" })

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

-- Trouble
vim.keymap.set("n", "<leader>tr", "<CMD>TroubleToggle<CR>", { desc = "Toggle trouble", silent = true })
vim.keymap.set("n", "<leader>ta", "<CMD>TroubleToggle workspace_diagnostics<CR>",
  { desc = "Toggle trouble global", silent = true })
vim.keymap.set("n", "<leader>tf", "<CMD>TroubleToggle quickfix<CR>", { desc = "Fix with trouble", silent = true })

vim.keymap.set("n", "<up>", "<nop>", { silent = true })
vim.keymap.set("n", "<down>", "<nop>", { silent = true })
vim.keymap.set("n", "<left>", "<nop>", { silent = true })
vim.keymap.set("n", "<right>", "<nop>", { silent = true })

-- Treewalker
vim.keymap.set({ 'n', 'v' }, '<A-k>', '<cmd>Treewalker Up<cr>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<A-j>', '<cmd>Treewalker Down<cr>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<A-l>', '<cmd>Treewalker Right<cr>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '<A-h>', '<cmd>Treewalker Left<cr>', { silent = true })

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
vim.keymap.set("n", "<leader>wy", "<C-W>s", { desc = "Split window below", silent = true })
vim.keymap.set("n", "<leader>wx", "<C-W>v", { desc = "Split window right", silent = true })

-- Tab Default
vim.keymap.set("n", "<leader>tt", "<CMD>tabnew<CR>", { desc = "New Tab", silent = true })
vim.keymap.set("n", "<S-h>", "<cmd>tabprevious<cr>", { desc = "Prev buffer", silent = true })
vim.keymap.set("n", "<S-l>", "<cmd>tabnext<cr>", { desc = "Next buffer", silent = true })
vim.keymap.set("n", "<S-j>", "<cmd>-tabmove<cr>", { desc = "Move tab to left", silent = true, noremap = true })
vim.keymap.set("n", "<S-k>", "<cmd>+tabmove<cr>", { desc = "Move tab to right", silent = true })

-- Term
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ft", "<CMD>Floaterminal<CR>", { desc = "Open float terminal" })
vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 15)

  job_id = vim.bo.channel
end)

vim.keymap.set("n", "<leader>tngs", function()
  vim.fn.chansend(job_id, { "ng serve --open\r\n" })
end)
