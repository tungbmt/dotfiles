vim.opt.completeopt = 'menuone,noinsert,noselect'

vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { noremap = true, expr = true })

vim.g.completion_confirm_key = ''
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? complete_info()["selected"] != "-1" ? "\\<Plug>(completion_confirm_completion)" : "\\<C-e>\\<CR>" : "\\<CR>"', { expr = true})

vim.api.nvim_set_keymap('i', '<C-Space>', '<Plug>(completion_trigger)', { silent = true })
