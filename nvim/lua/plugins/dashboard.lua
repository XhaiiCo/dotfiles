return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
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
            icon = "󰈞  ",
            desc = "Find  File                              ",
            action = "Leaderf file --popup",
            key = "<Leader> f f",
          },
          {
            icon = "󰈬  ",
            desc = "Project grep                            ",
            action = "Leaderf rg --popup",
            key = "<Leader> f g",
          },
          {
            icon = "  ",
            desc = "New file                                ",
            action = "enew",
            key = "e",
          },
          {
            icon = "󰗼  ",
            desc = "Quit Nvim                               ",
            action = "qa",
            key = "q",
          },
        }
      }
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
