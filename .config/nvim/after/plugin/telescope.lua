local opts = { noremap = true, silent = true }
local remap = vim.api.nvim_set_keymap

remap('n', ';f', '<Cmd>Telescope find_files<CR>', opts)
remap('n', ';r', '<Cmd>Telescope live_grep<CR>', opts)
remap('n', '\\\\', '<Cmd>Telescope buffers<CR>', opts)
remap('n', ';;', '<Cmd>Telescope help_tags<CR>', opts)

local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
