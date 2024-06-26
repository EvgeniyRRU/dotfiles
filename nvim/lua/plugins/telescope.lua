local M = {}
local map = require("utils").map
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

M.config = {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-o>"] = actions.send_selected_to_qflist + actions.open_qflist,
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

M.keymaps = {
  { "<leader>fa", builtin.find_files },
  { "<leader>ff", builtin.git_files },
  { "<leader>fg", builtin.live_grep },
  { "<leader>fb", builtin.buffers },
  { "<leader>fh", builtin.help_tags },
  { "<leader>fc", builtin.colorscheme },
}

return M
