
local util = require("util")

local options = {}
options.silent = true

util.nnoremap("<leader>ff", ":Files<cr>", options)
util.nnoremap("<leader>fg", ":GFiles<cr>", options)
util.nnoremap("<leader>fb", ":Buffers<cr>", options)
util.nnoremap("<leader>bb", ":Buffers<cr>", options)
util.nnoremap("<leader>frg", ":Rg<cr>", options)
