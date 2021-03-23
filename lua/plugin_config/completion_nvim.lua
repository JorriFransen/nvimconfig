
-- Map tab and shift-tab
vim.api.nvim_set_keymap("i", "<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]],
                        { noremap = true, expr = true })
vim.api.nvim_set_keymap("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]],
                        { noremap = true, expr = true })

vim.o.completeopt="menuone,noinsert,noselect"
vim.o.shortmess=vim.o.shortmess.."c"

vim.g.completion_sorting = "length"
vim.g.completion_matching_strategy_list = { "fuzzy", "substring", "exact" }
vim.g.completion_matching_smart_case = 1
