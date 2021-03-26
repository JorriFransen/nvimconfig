local util = require("util")
local actions = require('telescope.actions')

require('telescope').load_extension('fzy_native')

require('telescope').setup{
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix   = " > ",
    selection_caret = "> ",
    entry_prefix    = "  ",
    color_devicons = true,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    mappings = {
      i = {
        ["<C-q"] = actions.send_to_qflist,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },

  },

  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}

-- Telescope
util.nnoremap("<leader>tf", "<cmd>Telescope find_files<cr>")
util.nnoremap("<leader>tg", "<cmd>Telescope git_files<cr>")
util.nnoremap("<leader>trg", "<cmd>Telescope live_grep<cr>")
-- util.nnoremap("<leader>tb", "<cmd>Telescope buffers<cr>")
util.nnoremap("<leader>tht", "<cmd>Telescope help_tags<cr>")
util.nnoremap("<leader>tb", "<cmd>Telescope builtin<cr>")

