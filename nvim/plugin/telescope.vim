lua require('marques')

nnoremap <C-p> :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>vrc :lua require('marques.telescope').search_dotfiles()<CR>
