lua require('marques')

nnoremap <leader>e :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>fd :lua require('marques.telescope').projects()<CR>
