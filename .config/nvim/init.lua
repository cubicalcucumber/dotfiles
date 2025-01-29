vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46_cache/"

require("lazy_config")
require("mappings")
require("settings")
require("autocommands")

dofile(vim.g.base46_cache .. "syntax")
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")
