local function map(mode, from, to, opts)
  -- Default to non-recursive mappings.
  local defaults = { noremap = true }
  opts = vim.tbl_extend("keep", opts or {}, defaults)

  vim.api.nvim_set_keymap(mode, from, to, opts)
end

----------------
-- Ergonomics --
----------------

-- Preserve selections when indenting/dedenting in visual mode.
map("v", ">", ">gv")
map("v", "<", "<gv")

-- When jumping to the matching bracket, select the inside text.
map("", "%", "v%")


---------------------
-- Leader commands --
---------------------

-- Search and replace.
map("n", "<leader>sr", ":%s/")

-- Search and replace the word under the cursor.
map("n", "<leader>sc",
    ":%s/\\<<c-r>=expand('<cword>')<cr>//gc<left><left><left>")


----------------
-- Navigation --
----------------

-- Change directory to parent of current file.
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
