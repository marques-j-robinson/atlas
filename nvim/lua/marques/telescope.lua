local actions = require('telescope.actions')

local tele_opts = {
    defaults = {
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--follow',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
        },
        --file_sorter =  require('telescope.sorters').get_fzy_sorter,
        prompt_position = "top",
        sorting_strategy = "ascending",

        file_ignore_patterns = {
            "%.jpg",
            "%.png",
            "%.svg",
            "yarn.lock",
            "package%-lock.json",
            "git/*",
            "%/node_modules/%",
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

require('telescope').setup(tele_opts)

-- Telescope extensions must be loaded after the setup function
require('telescope').load_extension('fzf')

local M = {}

function M.live_grep()
    require('telescope.builtin').live_grep({
        prompt_title = "~ live grep ~",
        layout_strategy = "vertical",
        layout_config = {
            mirror = true,
            preview_height = 0.20,
        },
    })
end

function M.buffers()
    require('telescope.builtin').buffers({
        prompt_title = "~ buffers ~",
        shorten_path = false,
    })
end

function M.find_files()
    require('telescope.builtin').find_files({
        prompt_title = "~ files ~",
        follow = true,
        hidden = true,
    })
end

function M.current_dir_files()
  require('telescope.builtin').find_files({
    prompt_title = string.format("~ files in [%s] ~", vim.fn.expand("%:h")),
    cwd = vim.fn.expand("%:p:h"),
    hidden = true,
  })
end

function M.search_dotfiles()
    require('telescope.builtin').find_files({
        prompt_title = "~ vimrc ~",
        cwd = '~/.dotfiles/',
        hidden = true,
    })
end

return M
