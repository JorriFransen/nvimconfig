
call plug#begin('~/.config/nvim/plugged')
    " Asyncrun
    Plug 'skywind3000/asyncrun.vim'

    " Barbar
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'

    " Delimate
    Plug 'Raimondi/delimitMate'

    " Lsp
    Plug 'neovim/nvim-lspconfig'
    Plug 'JorriFransen/completion-nvim', { 'branch': 'feature/syntax_highlighting_in_signature_window' }
    " Plug '~/dev/completion-nvim'
    " Plug 'nvim-lua/completion-nvim'

    " Syntax
    Plug 'octol/vim-cpp-enhanced-highlight'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }

    " Theming
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ChristianChiarulli/nvcode-color-schemes.vim'

    " Util
    Plug 'preservim/nerdcommenter'

call plug#end()

