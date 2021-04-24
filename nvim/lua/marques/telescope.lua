local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        file_sorter =  require('telescope.sorters').get_fzy_sorter,
        prompt_position = "top",
        sorting_strategy = "ascending",

        file_ignore_patterns = {
            "venv/.*",
            "yarn.lock",
            "package-lock.json",
            "git/*",
            "node_modules/.*",
            "/nvim/plugged/.*",
        },


        mappings = {
            i = {
                ["<C-q>"] = actions.send_to_qflist,
            },
            n = {
                ["<C-h>"] = actions.file_split,
            }
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}
require('telescope').load_extension('fzy_native')
