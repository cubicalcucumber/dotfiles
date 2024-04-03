-- Resize all splits when resizing Vim
vim.api.nvim_create_autocmd("VimResized", {
  group = vim.api.nvim_create_augroup("AutoResizeSplits", { clear = true }),
  pattern = "*",
  callback = function()
    local keys = vim.api.nvim_replace_termcodes("<c-w>=", true, false, true)
    vim.api.nvim_feedkeys(keys, "n", false)
  end,
})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighlightg", { clear = true }),
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})
