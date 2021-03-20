
call plug#begin('~/.config/nvim/plugged')
    " Asyncrun
    Plug 'skywind3000/asyncrun.vim'

    " Delimate
    Plug 'Raimondi/delimitMate'

    " Lsp
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    " Plug 'hrsh7th/nvim-compe'

    " Syntax
    Plug 'octol/vim-cpp-enhanced-highlight'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Theming
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ChristianChiarulli/nvcode-color-schemes.vim'

    " Util
    Plug 'preservim/nerdcommenter'

call plug#end()

