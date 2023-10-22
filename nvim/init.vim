call plug#begin()

" Theme
Plug 'morhetz/gruvbox'

" File System
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Fuzzy Finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Git
Plug 'tpope/vim-fugitive'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Statusline
Plug 'vim-airline/vim-airline'

" Utils
Plug 'phaazon/hop.nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'tmsvg/pear-tree'
Plug 'scrooloose/nerdcommenter'
Plug 'szw/vim-maximizer'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-surround'

call plug#end()

" -----------------------------------------------------------------------------

" Editor Settings
filetype plugin indent on
syntax enable
colorscheme gruvbox
