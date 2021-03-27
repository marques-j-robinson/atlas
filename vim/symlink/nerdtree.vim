let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowBookmarks=0
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules', 'es5', 'dist', '\.swp', 'venv', '__pycache__']
let NERDTreeCascadeSingleChildDir=0
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeMapOpenSplit='h'
let g:NERDTreeMapOpenVSplit='v'

map <C-e> :NERDTreeToggle<CR>
map <leader>g :NERDTreeFind<CR>
