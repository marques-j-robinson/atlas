call plug#begin()

" Theme
Plug 'morhetz/gruvbox'

" File System
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Git
Plug 'tpope/vim-fugitive'

" Snippet
Plug 'Shougo/neosnippet.vim'

" Fuzzy Finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Statusline
Plug 'vim-airline/vim-airline'

" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Utils
Plug 'easymotion/vim-easymotion'
Plug 'tmsvg/pear-tree'
Plug 'scrooloose/nerdcommenter'
Plug 'szw/vim-maximizer'
Plug 'mbbill/undotree'
Plug 'sickill/vim-pasta'

call plug#end()

" -----------------------------------------------------------------------------

" Editor Settings
filetype plugin indent on
syntax enable
colorscheme gruvbox
