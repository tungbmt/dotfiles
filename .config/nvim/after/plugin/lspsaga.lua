local saga = require('lspsaga')

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

local opts = { noremap = true, silent = true }
local remap = vim.api.nvim_set_keymap
remap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
remap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
remap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
remap('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)
