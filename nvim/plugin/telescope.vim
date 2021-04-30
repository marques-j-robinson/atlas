lua require('marques')

nnoremap <leader>e :lua require('marques.telescope').find_files()<CR>
nnoremap <leader>vrc : lua require('marques.telescope').search_dotfiles()<CR>
