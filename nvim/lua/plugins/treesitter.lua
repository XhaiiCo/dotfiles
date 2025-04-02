return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require 'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all" (the listed parsers MUST always be installed)
        ensure_installed = {
          "lua",
          "javascript",
          "typescript",
          "css",
          "scss",
          "html",
          "json",
          "markdown",
          "markdown_inline",
          "sql",
          "c",
          "cpp",
          "c_sharp",
          "php",
          "xml"
        },
        fold = { enabled = true},

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = false,

        -- List of parsers to ignore installing (or "all")
        --ignore_install = { "javascript" },

        highlight = {
          enable = true,

          -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
          disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,

          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },
        indent = { enabled = true },
        autotag = { enabled = true },
      }

      vim.opt.foldmethod = "expr"
      vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

      vim.o.foldenable = true
      vim.o.foldlevel = 99
      vim.o.foldmethod = "expr"
      vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.o.foldtext = ""
      vim.opt.foldcolumn = "0"
      vim.opt.fillchars:append({fold = " "})
    end
  },
  { -- Use treesitter to autoclose and autorename html tag
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "javascript",
      "typescript",
      "xml",
      "php",
      "markdown",
    },
    config = function()
      require('nvim-ts-autotag').setup({
        aliases = {
          ["php"] = "html",
        }
      })
    end
  }
}
