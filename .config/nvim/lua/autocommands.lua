vim.api.nvim_create_autocmd("VimResized", {
  group = vim.api.nvim_create_augroup("AutoResizeSplits", { clear = true }),
  pattern = "*",
  callback = function()
    local keys = vim.api.nvim_replace_termcodes("<c-w>=", true, false, true)
    vim.api.nvim_feedkeys(keys, "n", false)
  end,
})
