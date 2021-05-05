
local util = require("util")

vim.o.timeoutlen=400

vim.o.backspace = "start,eol,indent"
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wildmenu = true
vim.o.clipboard = "unnamedplus"
vim.o.mouse = "a"

vim.wo.cursorline = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.colorcolumn = "80"
vim.o.scrolloff=5
vim.o.splitbelow = true
vim.o.splitright = true

vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.expandtab = true

vim.o.hidden = true
vim.o.swapfile = false
vim.o.undofile = true

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


if vim.g.gnvim then
  vim.o.guifont = "FuraCode NF:h11"
  util.background_is_transparent_initially = false
else
  vim.o.guifont = "FuraCode NF:h14"
end

-- vim.cmd("colorscheme nvcode")
-- vim.g.airline_theme = "deus"

vim.g.gruvbox_contrast_dark="hard"
vim.g.gruvbox_bold = 0
vim.g.gruvbox_italic = 0
vim.cmd("colorscheme gruvbox")
vim.g.airline_theme = "gruvbox" -- gruvbox/couleurs

-- vim.cmd("colorscheme solarized")
-- vim.g.airline_theme = "solarized"

vim.api.nvim_exec([[
  augroup my_auto_group
    autocmd!

    "autocmd vimenter * :lua _G.initialize_background_transparency()

    autocmd BufNewFile,BufRead *.zdc set filetype=zdc | set syntax=cpp

    "autocmd BufWritePre * call TrimWhiteSpace()
  augroup end
]], false)
