local map = function(mode, key, func, desc)
  vim.keymap.set(mode, key, func, { desc = desc })
end

local remap = function(mode, key, func, desc)
  vim.keymap.set(mode, key, func, { remap = true, desc = desc })
end

----------------
-- Ergonomics --
----------------

-- Make entering command mode more ergonomic
map("n", ";", ":")

-- Nice convenient commenting shortcuts
remap("n", "<c-n>", "gcc")
remap("n", "<c-s-n>", "gcip")

-- Preserve selections when indenting/dedenting in visual mode
map("v", ">", ">gv")
map("v", "<", "<gv")

-- When jumping to the matching bracket, select the inside text
map("", "%", "v%")

-- Clear search highlight when pressing escape
map("n", "<esc>", "<cmd>nohlsearch<cr>")


--------------------
-- User Interface --
--------------------

-- Open a floating terminal
map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floating_terminal"
  }
end)

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

-- Toggle relative numbers
map("n", "<leader>rn",
  function()
    vim.o.relativenumber = not vim.o.relativenumber
  end, "Toggle relative numbers")


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
