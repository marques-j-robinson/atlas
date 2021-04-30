lua require('marques')

nnoremap <leader>e :lua require('marques.telescope').find_files()<CR>
nnoremap <leader>E :lua require('marques.telescope').current_dir_files()<CR>
nnoremap <leader>b :lua require('marques.telescope').buffers()<CR>
nnoremap <leader>a :lua require('marques.telescope').live_grep()<CR>

nnoremap <leader>vrc : lua require('marques.telescope').search_dotfiles()<CR>
