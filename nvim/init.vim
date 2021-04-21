" --------------------------------------------------------------------------------------------------
" Plugins ------------------------------------------------------------------------------------------
" --------------------------------------------------------------------------------------------------

call plug#begin()

" Theme
Plug 'morhetz/gruvbox'
" File System Navigation
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Git
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Status bar
Plug 'vim-airline/vim-airline'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Auto Format on Save
Plug 'prettier/prettier'
" Syntax Highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Other
Plug 'Shougo/neosnippet.vim'
Plug 'szw/vim-maximizer'
Plug 'tmsvg/pear-tree'
Plug 'scrooloose/nerdcommenter'

" Remove
" Plug 'yuezk/vim-js'
" Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()

" --------------------------------------------------------------------------------------------------
" Configs ------------------------------------------------------------------------------------------
" --------------------------------------------------------------------------------------------------

filetype plugin indent on
set guifont=Hack-Regular:h8

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme gruvbox
set background=dark
