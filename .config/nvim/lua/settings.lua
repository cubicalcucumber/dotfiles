function set_tab_width(width)
  vim.opt.tabstop     = width
  vim.opt.shiftwidth  = width
  vim.opt.softtabstop = width
end

-- Use 2 spaces instead of a tab
set_tab_width(2)
vim.opt.expandtab = true

-- Make all yank/delete operations copy to the clipboard
vim.opt.clipboard = "unnamedplus"

-- Use 24-bit RGB color in the terminal
vim.opt.termguicolors = true

-- Always show the status line
vim.opt.laststatus = 2

-- Use relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- Highlight the current line
vim.opt.cursorline = true

-- Keep 10 lines above/below the cursor when scrolling
vim.opt.scrolloff = 10

-- Show trailing spaces and tab characters
vim.opt.listchars = { trail = "·", tab = "> " }
vim.opt.list = true

-- Set the vertical separator
vim.opt.fillchars = { vert = "|" }

-- Set up line breaks
vim.opt.breakindent = true

-- Turn on search highlighting
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Only wait 250ms for a mapped sequence to complete
vim.opt.timeoutlen = 250

-- Enable mouse support
vim.opt.mouse = "a"

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Don't use swap files
vim.opt.swapfile = false

-- Remember the undo history
vim.o.undofile = true
