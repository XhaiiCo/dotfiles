-- Top bar with the path of the current file
return {
  "utilyre/barbecue.nvim",
  version = "1.2.0",
  dependencies = {
    "SmiteshP/nvim-navic",
  },
  opts = {
    attach_navic = false,
  },
  config = function()
    require("barbecue").setup({
      theme = "tokyonight-storm",
    })
  end
}
