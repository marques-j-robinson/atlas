" --------------------------------------------------------------------------------------------------
" Plugins ------------------------------------------------------------------------------------------
" --------------------------------------------------------------------------------------------------

call plug#begin()

" Theme
Plug 'morhetz/gruvbox'
" Status bar
Plug 'vim-airline/vim-airline'
" Git
Plug 'tpope/vim-fugitive'

" File System Navigation
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Auto Format on Save
Plug 'prettier/prettier'

" Syntax Highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'

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
