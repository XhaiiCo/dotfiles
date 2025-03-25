vim.api.nvim_create_user_command("Ngc", function(opts)
  vim.cmd("!ng g c " .. opts.args)
end, { nargs = 1 })

vim.api.nvim_create_user_command("Ngm", function(opts)
  vim.cmd("!ng g m " .. opts.args)
end, { nargs = 1 })

vim.api.nvim_create_user_command("Ngs", function(opts)
  vim.cmd("!ng g s " .. opts.args)
end, { nargs = 1 })

-- highlights all occurrences of the word under the cursor
vim.api.nvim_create_autocmd("CursorMoved", {
  pattern = "*",
  callback = function()
    local word = vim.fn.expand("<cword>")
    if word ~= "" then
      local escaped_word = vim.fn.escape(word, "\\/.*$^~[]")
      local success, _ = pcall(function()
        vim.cmd("match Search /\\V\\<" .. escaped_word .. "\\>/")
      end)
      if not success then
        vim.cmd("match none")
      end
    else
      vim.cmd("match none")
    end
  end
})
