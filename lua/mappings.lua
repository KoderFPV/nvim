vim.api.nvim_set_keymap('n', '<Leader>i', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true, desc = "Show info" })
vim.api.nvim_set_keymap('n', '<Leader>t1', ':1ToggleTerm<CR>', { noremap = true, silent = true, desc = "Open first terminal" })
vim.api.nvim_set_keymap('n', '<Leader>t2', ':2ToggleTerm<CR>', { noremap = true, silent = true, desc = "Open second terminal" })
vim.api.nvim_set_keymap('n', '<Leader>t3', ':3ToggleTerm<CR>', { noremap = true, silent = true, desc = "Open third terminal" })
vim.keymap.set('i', '<C-Enter>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
vim.g.copilot_no_tab_map = true
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]],{noremap=true})

vim.keymap.set("n", "<Leader>l[", vim.diagnostic.goto_prev, { desc = 'Previous diagnostic'})
vim.keymap.set("n", "<Leader>l]", vim.diagnostic.goto_next, { desc = 'Next diagnostic'})
