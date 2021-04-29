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
Plug 'nvim-telescope/telescope-project.nvim'

" Git
Plug 'tpope/vim-fugitive'

" Lint
Plug 'dense-analysis/ale'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Statusline
Plug 'vim-airline/vim-airline'

" Utils
Plug 'phaazon/hop.nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'tmsvg/pear-tree'
Plug 'scrooloose/nerdcommenter'
Plug 'szw/vim-maximizer'
Plug 'sickill/vim-pasta'

call plug#end()

" -----------------------------------------------------------------------------

" Editor Settings
filetype plugin indent on
syntax enable
colorscheme gruvbox
