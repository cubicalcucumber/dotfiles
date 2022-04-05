-------------
-- Editing --
-------------

function set_tab_width(width)
  vim.opt.tabstop     = width
  vim.opt.shiftwidth  = width
  vim.opt.softtabstop = width
end

-- Use 2 spaces instead of a tab.
set_tab_width(2)
vim.opt.expandtab = true

-- Make all yank/delete operations copy to the clipboard.
vim.opt.clipboard = "unnamedplus"


----------------------------
-- Display and UI options --
----------------------------

-- Use 24-bit RGB color in the terminal.
vim.opt.termguicolors = true

-- Activate the terminal title.
vim.opt.title = true

-- Always show the status line.
vim.opt.laststatus = 2

-- Set the color scheme.
vim.g.colors_name = "rainbow"
vim.opt.background = "dark"

-- Use relative line numbers.
vim.opt.relativenumber = true
vim.opt.number = true

-- Highlight the current line.
vim.opt.cursorline = true

-- Show trailing spaces and tab characters.
vim.opt.listchars = { trail = "·", tab = "> " }
vim.opt.list = true

-- Set the vertical separator.
vim.opt.fillchars = { vert = "|" }

-- Indicate wrapped lines.
vim.opt.showbreak = " ~> "

-- Turn on search highlighting.
vim.opt.incsearch = true
vim.opt.hlsearch = true


---------------------
-- Various options --
---------------------

-- Don't use swap files.
vim.opt.swapfile = false
