return {
  formatters = {
    ["php-cs-fixer"] = {
      command = "php-cs-fixer",
      args = {
        "fix",
        "--rules=@PSR2", -- Formatting preset. Other presets are available, see the php-cs-fixer docs.
        "$FILENAME",
      },
      stdin = false,
    }
  },
  formatters_by_ft = {
    lua = { "prettierd" },
    json = { "prettierd" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    ypescriptreact = { "prettierd" },
    typescriptangular = { "prettierd" },
    --php = { "phpcbf", "php-cs-fixer" },
    html = { "prettierd" },
    css = { "prettierd" },
    xml = { "prettierd" },
    sql = { "prettierd" },
  },
  format_on_save = {
    timeout_ms = 3000,
    lsp_format = "fallback",
  },
  notify_on_error = true,
}
