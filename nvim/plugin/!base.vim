set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2

set splitright
set splitbelow
set mouse=a

set number
set relativenumber

let mapleader=","
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
