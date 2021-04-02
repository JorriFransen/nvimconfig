
local nvim_lsp = require("lspconfig")
local my_lsp = require("plugin_config.lspconfig")

nvim_lsp.clangd.setup { on_attach = my_lsp.attach_lsp }

local util = require("util")
util.noremap("<leader>ga", ":ClangdSwitchSourceHeader<CR>")

