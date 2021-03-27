local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute('packadd packer.nvim')
end

return require("packer").startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Asyncrun
  use 'skywind3000/asyncrun.vim'

  -- Barbar
  use 'kyazdani42/nvim-web-devicons'
  use 'romgrk/barbar.nvim'

  -- Delimate
  use 'Raimondi/delimitMate'

  -- Lsp
  use 'neovim/nvim-lspconfig'
  use { 'JorriFransen/completion-nvim', branch = 'feature/syntax_highlighting_in_signature_window' }
  -- use '~/dev/completion-nvim'
  -- use 'nvim-lua/completion-nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'

  -- Fzf
  use 'junegunn/fzf.vim'
  use {
    'junegunn/fzf',
    run = ":call fzf#install()",
  }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Theming
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'ChristianChiarulli/nvcode-color-schemes.vim'
  use 'morhetz/gruvbox' -- Using this for the airline theme
  use 'rafikdraoui/gruvbox-custom'
  use 'rafikdraoui/couleurs.vim'

  use 'tpope/vim-fugitive'
  use 'mhinz/vim-startify'

  -- Util
  use 'preservim/nerdcommenter'
end)
