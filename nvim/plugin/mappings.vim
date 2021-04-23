" Convenience mappings
map ; :
map H 0
map L $
map <SPACE> 10j
map <BS> 10k

" swap between current file and most recently edited file
nnoremap <leader><leader> <c-^>

" JSON pretty print
map <C-b> :%!python -m json.tool<CR>

" Split navigation mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open blank vim buffer in each direction
nnoremap c<C-j> :bel sp new<CR>
nnoremap c<C-k> :abo sp new<CR>
nnoremap c<C-h> :lefta vsp new<CR>
nnoremap c<C-l> :rightb vsp new<CR>

" Javascript ES6 arrow function helper
imap <c-l> <space>=><space>

" Dynamically add .only when inside a test block
nmap <leader>ot mT:%s/test.only/test/ge<cr>'T?test(<cr>cetest.only<esc>'T

" Remove all .only from a file
nmap <leader>ox mT:%s/test.only/test/ge<cr>'T

" -----------------------------------------------------------------------------

" Integrated Terminal
function! OpenTerminal()
  startinsert
  split term://zsh
  resize 10
endfunction

" open terminal in insert mode on ctrl+n
nnoremap <c-n> :call OpenTerminal()<CR>
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
