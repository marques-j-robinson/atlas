syntax on

set nu
set ts=4 sts=4 sw=4 et sta
set encoding=utf-8
set cb=unnamed
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99

" Proper PEP 8 indentation
au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4 |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix

" Other filetype indentation rules
au BufNewFile,BufRead *.js, *.html, *.css
\ set tabstop=2 |
\ set softtabstop=2 |
\ set shiftwidth=2

" Flag unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let mapleader=","
let python_highlight_all=1

map ; :
map <space> 10j
map <bs> 10k

" split navigation mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Swap between current file and most recently edited file
nnoremap <leader><leader> <c-^>

" Color Scheme setting
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif
