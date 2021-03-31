
local util = require("util")

-- Window navigation
util.noremap("<leader>h", ":wincmd h<CR>")
util.noremap("<leader>l", ":wincmd l<CR>")
util.noremap("<leader>j", ":wincmd j<CR>")
util.noremap("<leader>k", ":wincmd k<CR>")
util.noremap("<leader>wv", ":vsplit<cr>")
util.noremap("<leader>ws", ":split<cr>")
-- Move window to a new tab
util.noremap("<leader>tt", ":wincmd T<CR>")

-- Stay in visual mode after indenting
util.vnoremap("<", "<gv")
util.vnoremap(">", ">gv")

-- Tab navigation
util.noremap("<leader>th", ":tabp<CR>")
util.noremap("<leader>tp", ":tabp<CR>")
util.noremap("<leader>tl", ":tabn<CR>")
util.noremap("<leader>tn", ":tabn<CR>")
util.noremap("<leader>tq", ":tabc<CR>")
util.noremap("<leader>tc", ":tabe<CR>")

-- Buffer navigation
util.noremap("<leader>b", ":buffer<Space>")

util.nnoremap("<leader>x", ":lua execute_current_line()<CR>")
util.nnoremap("<leader>r", ":lua source_current_buffer()<CR>")

-- Compilation
util.nnoremap("<F5>", ":call Compile()<CR>")
util.inoremap("<F5>", "<esc>: call Compile()<CR>")

util.nnoremap("<leader>cd", ":lua toggle_quickfix()<CR>", { silent = true })

-- Quickfix
util.nnoremap("<leader>en", ":cn<cr>")
util.nnoremap("<C-j>", ":cn<cr>")
util.nnoremap("<leader>ep", ":cp<cr>")
util.nnoremap("<C-k>", ":cp<cr>")

-- Toggle search highlight
util.nnoremap("<leader>thh", ":lua toggle_search_highlight()<CR>", { silent = true })
