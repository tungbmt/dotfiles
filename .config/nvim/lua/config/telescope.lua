local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', ';f', '<Cmd>Telescope find_files<CR>', opts)
vim.api.nvim_set_keymap('n', ';r', '<Cmd>Telescope live_grep<CR>', opts)
vim.api.nvim_set_keymap('n', '\\\\', '<Cmd>Telescope buffers<CR>', opts)
vim.api.nvim_set_keymap('n', ';;', '<Cmd>Telescope help_tags<CR>', opts)

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
