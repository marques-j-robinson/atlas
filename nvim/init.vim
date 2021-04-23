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
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Statusline
Plug 'vim-airline/vim-airline'

" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Utils
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

" Remaps
map ; :
map <space> 10j
map <bs> 10k
" Swap between current file and most recently edited file
nnoremap <leader><leader> <c-^>
" split navigation mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" -----------------------------------------------------------------------------
" Integrated Terminal
" -----------------------------------------------------------------------------
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" open terminal in insert mode on ctrl+n
function! OpenTerminal()
  startinsert
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

lua require('marques')
