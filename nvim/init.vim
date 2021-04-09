" --------------------------------------------------------------------------------------------------
" Plugins ------------------------------------------------------------------------------------------
" --------------------------------------------------------------------------------------------------

call plug#begin()

" Theme
Plug 'dracula/vim'

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

" Enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme dracula

filetype plugin indent on
set guifont=Hack-Regular:h8

" Integrated Terminal
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 20
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
