local actions = require('telescope.actions')

local settings = {
    defaults = {
        file_sorter =  require('telescope.sorters').get_fzy_sorter,
        prompt_position = "top",
        sorting_strategy = "ascending",

        file_ignore_patterns = {
            "%.jpg",
            "%.png",
            "%.svg",
            "yarn.lock",
            "package%-lock.json",
            "%/node_modules/%",
            "venv*",
        },


        mappings = {
            i = {
                ["<ESC>"] = actions.close,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-o>"] = actions.send_to_qflist + actions.open_qflist,
            }
        }
    },
    extensions = {
        fzf = {
            -- override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        },
    }
}

require('telescope').setup(settings)

-- Telescope extensions must be loaded after the setup function
require('telescope').load_extension('fzf')

local M = {}

function M.search_dotfiles()
    require('telescope.builtin').find_files({
        prompt_title = '~ VimRC ~',
        cwd = '~/.dotfiles/',
    })
end

return M
