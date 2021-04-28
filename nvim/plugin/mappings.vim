let mapleader=","

" Convenience mappings
map ; :
map H 0
map L $

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

" Expand visual selection of surrounding code blocks
function! s:repeat_block(key) abort
  if a:key ==# '.'
    return get(s:, 'v_repeat_count', '').get(s:, 'v_repeat_key', '')
  endif

  let s:v_repeat_count = v:count1
  let s:v_repeat_key = a:key
  return a:key
endfunction

for k in ['w', 'W', 's', 'p', '[', ']', '(', ')', 'b', '<', '>', 't', '{', '}', 'B', '"', "'", '`']
  execute printf('vnoremap <expr> a%s <sid>repeat_block("a%s")', k, k)
  execute printf('vnoremap <expr> i%s <sid>repeat_block("i%s")', k, k)
endfor

unlet! k

vnoremap <expr> . <sid>repeat_block('.')

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
