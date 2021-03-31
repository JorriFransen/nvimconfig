
local util = require("util")

vim.o.timeoutlen=400

vim.o.backspace = "start,eol,indent"
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wildmenu = true
vim.wo.cursorline = true
vim.o.clipboard = "unnamedplus"
vim.o.mouse = "a"
vim.wo.number = true

vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true

vim.o.hidden = true
vim.o.splitbelow = true
vim.o.splitright = true

local RTP = util.string.split(vim.o.runtimepath, ",")[1]
local CONFIG_MAIN = RTP .. "/init.lua"
local CONFIG_BINDINGS = RTP .. "/lua/key_bindings.lua"
local CONFIG_PLUGINS = RTP .. "/lua/plugin_definitions.lua"

vim.g.mapleader = ' '

util.noremap("<leader>cc", ":e " ..  CONFIG_MAIN .. "<CR>")
util.noremap("<leader>ck", ":e " .. CONFIG_BINDINGS .. "<CR>")
util.noremap("<leader>cpd", ":e " .. CONFIG_PLUGINS .. "<CR>")

require("plugin_definitions")
require("plugin_config")
require("ls_config")
require("key_bindings")

vim.o.background = "dark"
vim.o.termguicolors = true
vim.cmd("colorscheme couleurs")
vim.g.airline_theme = "gruvbox"

vim.cmd[[ autocmd BufNewFile,BufRead *.zdc set filetype=zdc | set syntax=cpp ]]
