local util = require("util")

vim.g.NERDSpaceDelims = 1
vim.g.NERDDefaultAlign = "left"
vim.g.NERDCustomDelimiters = { zdc = { left = "//", right = "" }}
vim.g.NERDCreateDefaultMappings = 0

-- Toggle comments
util.map("<leader>;", "<plug>NERDCommenterToggle")

