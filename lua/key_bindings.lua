
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

-- Open a terminal window
util.noremap("<leader>T", ":tabe | terminal<CR>")

-- Stay in visual mode after indenting
util.vnoremap("<", "<gv")
util.vnoremap(">", ">gv")

-- Tab navigation
util.noremap("<C-h>", ":tabp<CR>")
util.noremap("<C-l>", ":tabn<CR>")
util.tnoremap("<C-h>", "<C-\\><C-n>:tabp<CR>")
util.tnoremap("<C-l>", "<C-\\><C-n>:tabn<CR>")

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
util.nnoremap("<leader>thh", ":lua toggle_search_highlight()<CR>",
              { silent = true })

-- Toggle background transparency
util.nnoremap("<leader>tb", ":lua toggle_background_transparency()<CR>",
              { silent = true})
