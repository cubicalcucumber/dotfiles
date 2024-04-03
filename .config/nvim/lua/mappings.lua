local map = function(mode, key, func, desc)
  vim.keymap.set(mode, key, func, { desc = desc })
end

----------------
-- Ergonomics --
----------------

-- Preserve selections when indenting/dedenting in visual mode
map("v", ">", ">gv")
map("v", "<", "<gv")

-- When jumping to the matching bracket, select the inside text
map("", "%", "v%")

-- Clear search highlight when pressing escape
map("n", "<esc>", "<cmd>nohlsearch<cr>")


------------------------
-- Search and replace --
------------------------

-- Search and replace
map("n", "<leader>sr", ":%s", "[S]earch and [R]eplace")

-- Search and replace the word under the cursor
map("n", "<leader>sc",
    ":%s/\\<<c-r>=expand('<cword>')<cr>\\>//gc<left><left><left>",
    "[S]earch and replace with [C]urrent word")


----------------
-- Navigation --
----------------

-- Change directory to parent of current file
map("n", "<leader>cd", "<esc>:cd %:p:h<cr>")


------------------------
-- File type specific --
------------------------

-- Execute current Ruby file.
vim.cmd [[
  autocmd FileType ruby
    \ noremap <buffer> <leader>n :w<cr>:AsyncRun ruby %:p<cr>
]]

-- Execute current Lua file.
vim.cmd [[
  autocmd FileType lua
    \ noremap <buffer> <leader>n :w<cr>:AsyncRun lua %:p<cr>
]]
