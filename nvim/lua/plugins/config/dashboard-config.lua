return function()
  require('dashboard').setup {
    theme = "doom",
    config = {
      header = {
        "                                                       ",
        "                                                       ",
        "                                                       ",
        " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
        " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
        " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
        " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
        " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
        " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
        "                                                       ",
        "                                                       ",
        "                                                       ",
        "                                                       ",
      },
      center = {
        {
          icon = "🔍  ",
          desc = "Find File                               ",
          action = function()
            require('telescope.builtin').find_files()
          end,
          key = "f",
        },
        {
          icon = "📂  ",
          desc = "Navigate                               ",
          action = function()
            vim.cmd("Oil")
          end,
          key = "d",
        },
        {
          icon = "⚙️   ",
          desc = "Edit Config                               ",
          action = function()
            require('telescope.builtin').find_files {
              cwd = vim.fn.stdpath("config")
            }
          end,
          key = "e",
        },
        {
          icon = "🖥️  ",
          desc = "Open Terminal                           ",
          action = function()
            vim.cmd.vnew()
            vim.cmd.term()
            vim.cmd.wincmd("J")
            vim.api.nvim_win_set_height(0, 15)

            job_id = vim.bo.channel
          end,
          key = "t",
        },
        {
          icon = "❌  ",
          desc = "Quit Nvim                               ",
          action = "qa",
          key = "q",
        },
      }
    }
  }
end
