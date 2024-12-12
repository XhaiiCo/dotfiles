vim.cmd.colorscheme("catppuccin-macchiato")

-- Configurer une transparence dans Neovim
-- vim.cmd [[
--   augroup TransparentBackground
--     autocmd!
--     autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
--     autocmd ColorScheme * highlight NonText ctermbg=none guibg=none
--   augroup END
-- ]]

-- Optionnel : Redimensionner la transparence pour certaines sections
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
