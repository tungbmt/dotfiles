local remap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

remap('i', 'jk', '<ESC>', opts)

-- ctrl + s to save
remap('n', '<C-s>', ':write<CR>', { noremap = true })

-- delete without yank
remap('n', 'x', '"_x', { noremap = true })
remap('n', '<leader>d', '"_d', { noremap = true })

-- tabs
remap('n', 'te', ':tabedit ', {})
remap('n', '<S-Tab>', ':tabprev<CR>', {})
remap('n', '<Tab>', ':tabnext<CR>', {})

-- split window
remap('n', 'ss', ':split<CR><C-w>w', {})
remap('n', 'sv', ':vsplit<CR><C-w>w', {})

-- resize window
remap('n', '<C-w><left>', '10<C-w><', {})
remap('n', '<C-w><right>', '10<C-w>>', {})
remap('n', '<C-w><up>', '10<C-w>+', {})
remap('n', '<C-w><down>', '10<C-w>-', {})

-- move window
remap('n', '<Space>', '<C-w>w', {})
remap('', 'sh', '<C-w>h', {})
remap('', 'sj', '<C-w>j', {})
remap('', 'sk', '<C-w>k', {})
remap('', 'sl', '<C-w>l', {})
