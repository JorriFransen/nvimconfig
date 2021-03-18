
set nocompatible
filetype plugin indent on
syntax on
set backspace=start,eol,indent
set hlsearch ignorecase smartcase
set wildmenu
set cursorline
set clipboard=unnamedplus
set mouse=a
set number
set shiftwidth=4 tabstop=4 expandtab

" Allow switching away from modified buffers
set hidden

set splitbelow
set splitright

let $RTP=split(&runtimepath, ',')[0]
let $CONFIG_MAIN=join([$RTP, "/init.vim"], "")
let $CONFIG_BINDINGS=join([$RTP, "/key_bindings.vim"], "")
let $CONFIG_PLUGINS=join([$RTP, "/plugin_definitions.vim"], "")
let $CONFIG_PLUGIN_SETTINGS=join([$RTP, "/plugin_settings.vim"], "")
let $CONFIG_TELESCOPE=join([$RTP, "/telescope.lua"], "")
let $CONFIG_LSPCONFIG=join([$RTP, "/lspconfig.lua"], "")

source $CONFIG_PLUGINS

let mapleader = "\<Space>"
no <leader>cc :e $CONFIG_MAIN<CR>
no <leader>ck :e $CONFIG_BINDINGS<CR>
no <leader>cpd :e $CONFIG_PLUGINS<CR>
no <leader>cps :e $CONFIG_PLUGIN_SETTINGS<CR>
no <leader>ct :e $CONFIG_TELESCOPE<CR>
no <leader>cl :e $CONFIG_LSPCONFIG<CR>

source $CONFIG_PLUGIN_SETTINGS

source $CONFIG_BINDINGS

" Color scheme
set background=dark
colorscheme nvcode

if (has("termguicolors"))
    set termguicolors
endif

