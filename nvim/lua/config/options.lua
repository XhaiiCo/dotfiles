local set = vim.opt

set.shiftwidth = 2 -- Number of space for tab
set.autoread = true -- Read a file when it was changed outside of nvim
set.autowrite = true -- Automatically write file when it was changed
set.encoding = "UTF-8" -- Default encoding
set.mouse = "a" -- Enabled in all mode
set.list = true -- Show space, line breaks, spaces, tabs...
set.listchars:append("eol:↴") -- Set the sign for the EOL
set.signcolumn = "yes"
set.wrap = false -- Long lines are not wrapped
set.completeopt = { "menu", "menuone", "noselect", "preview" }
set.splitbelow = true -- Cursor go on the left window when split
set.splitright = true -- Cursor go on the right windows when split
set.confirm = true -- Confirm before closing an unsaved buffer
set.cursorline = false -- Highlight current line
set.expandtab = true -- Use spaces instead of tabs
set.smartindent = true -- Insert indents automatically
set.winbar = "" -- Disable winbar
set.ignorecase = true -- Ignore case when searching
set.clipboard = "unnamedplus" -- Use system clipboard


-- Number
set.number = true         -- Number in front of each line
set.relativenumber = true -- Show relative line numbers
set.numberwidth = 2

set.guicursor = {
  "n-v-c:block",                                  -- Normal, visual, command-line: block cursor
  "i-ci-ve:ver25",                                -- Insert, command-line insert, visual-exclude: vertical bar cursor with 25% width
  "r-cr:hor20",                                   -- Replace, command-line replace: horizontal bar cursor with 20% height
  "o:hor50",                                      -- Operator-pending: horizontal bar cursor with 50% height
  "a:blinkwait700-blinkoff400-blinkon250",        -- All modes: blinking settings
  "sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch: block cursor with specific blinking settings
}

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = "Highlight yank",
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})

-- Term
vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end
})
