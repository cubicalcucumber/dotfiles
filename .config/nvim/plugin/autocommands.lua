vim.cmd [[
  augroup AutoResizeSplits
    autocmd!
    autocmd VimResized * :execute "normal! \<c-w>="
  augroup END
]]
