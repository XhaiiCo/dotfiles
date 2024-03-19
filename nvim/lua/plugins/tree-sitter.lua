return {
  "nvim-treesitter/nvim-treesitter",
  commit = "0da349ed303bea955942f409d29059cdb89dbe2c",
  dependencies = {
    { "windwp/nvim-ts-autotag", commit = "8515e48a277a2f4947d91004d9aa92c29fdc5e18" },
  },
  main = "nvim-treesitter.configs",
  opts = {
    auto_install = true,
    ensure_installed = {
      "lua",
      "javascript",
      "typescript",
      "css",
      "scss",
      "html",
      "jsdoc",
      "json",
      "markdown",
      "sql",
      "c",
      "cpp",
      "c_sharp"
    },
    highlight = {
      enable = true,
    },
    autotag = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}
