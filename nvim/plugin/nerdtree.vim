let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 0
let NERDTreeShowHidden = 1
let NERDTreeCascadeSingleChildDir=1
let g:NERDTreeStatusline = ''
let NERDTreeIgnore = ['.git$', '.DS_Store', '__pycache__', 'node_modules']
let g:NERDTreeMapOpenSplit = "s"
let g:NERDTreeMapOpenVSplit = "v"

nnoremap <silent> <C-e> :NERDTreeToggle<CR>
map <leader>g :NERDTreeFind<cr>

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
