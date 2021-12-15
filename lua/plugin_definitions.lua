local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute('packadd packer.nvim')
end

vim.cmd('let base16colorspace=256')

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
  -- use 'nvim-lua/completion-nvim'
  -- use 'Omnisharp/omnisharp-vim'
  use { 'neoclide/coc.nvim', branch = 'release' }

  use 'rhysd/vim-llvm'

  -- Fzf
  use 'junegunn/fzf.vim'
  use {
    'junegunn/fzf',
    run = ":call fzf#install()",
  }

  -- Treesitter
  -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Theming
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'gruvbox-community/gruvbox'
  -- use 'ChristianChiarulli/nvcode-color-schemes.vim'
  use 'sp5/nvim-colors-solarized'

  use 'tpope/vim-fugitive'

  use 'puremourning/vimspector'

  -- Util
  use 'preservim/nerdcommenter'
  use 'mbbill/undotree'
  use 'psliwka/vim-smoothie'

end)
