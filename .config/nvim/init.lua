require('plugins')
require('settings').setup()
require('keymappings').setup()

vim.cmd('syntax on')
vim.cmd('colorscheme onedark')
vim.cmd('hi Normal ctermbg=none guibg=none')

require('config/lsp')
require('config/lspsaga')
require('config/treesitter')
require('config/completion')
require('config/telescope')
require('nvim-autopairs').setup {}
require('config/lualine')
