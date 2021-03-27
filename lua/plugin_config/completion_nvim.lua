
local util = require('util')

-- Map tab and shift-tab
util.inoremap("<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true })
util.inoremap("<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true })

vim.o.completeopt="menuone,noinsert,noselect"
vim.o.shortmess=vim.o.shortmess.."c"

vim.g.completion_sorting = "length"
vim.g.completion_matching_strategy_list = { "exact", "substring", "fuzzy" }
vim.g.completion_matching_case = 1
-- vim.g.completion_matching_smart_case = 1
