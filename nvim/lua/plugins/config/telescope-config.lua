return function()
  require("telescope").setup {
    pickers = {
      find_files = {
        theme = "ivy"
      },
      live_grep = {
        theme = "ivy"
      }
    }
  }

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
end
