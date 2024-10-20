-- Show fn interface
vim.api.nvim_set_keymap('n', '<Leader>i', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true, desc = "Show info" })

-- Open terminals
vim.api.nvim_set_keymap('n', '<Leader>t1', ':1ToggleTerm<CR>', { noremap = true, silent = true, desc = "Open first terminal" })
vim.api.nvim_set_keymap('n', '<Leader>t2', ':2ToggleTerm<CR>', { noremap = true, silent = true, desc = "Open second terminal" })
vim.api.nvim_set_keymap('n', '<Leader>t3', ':3ToggleTerm<CR>', { noremap = true, silent = true, desc = "Open third terminal" })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]],{noremap=true})

-- Copilot
vim.keymap.set('i', '<C-Enter>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
vim.g.copilot_no_tab_map = true

-- Jumb previous/next error
vim.keymap.set("n", "<Leader>l[", vim.diagnostic.goto_prev, { desc = 'Previous diagnostic'})
vim.keymap.set("n", "<Leader>l]", vim.diagnostic.goto_next, { desc = 'Next diagnostic'})

-- Playwright
-- vim.keymap.set("n", "<Leader>rp", ':lua require(\'neotest-playwright\').attachment()', { desc = 'Run playwright'})

-- Unit tests
vim.api.nvim_set_keymap('n', '<Leader>rr', ':lua require("neotest").run.run({ enter = true })<CR>', { noremap = true, silent = true, desc = "Run test" })
vim.api.nvim_set_keymap('n', '<Leader>rs', ':lua require("neotest").run.stop()<CR>', { noremap = true, silent = true, desc = "Stop test" })
vim.api.nvim_set_keymap('n', '<Leader>ro', ':lua require("neotest").output_panel.open()<CR>', { noremap = true, silent = true, desc = "Open output" })
vim.api.nvim_set_keymap('n', '<Leader>rO', ':lua require("neotest").output.open({ enter = true })<CR>', { noremap = true, silent = true, desc = "Open output (enter)" })
vim.api.nvim_set_keymap('n', '<Leader>ri', ':lua require("neotest").summary.toggle()<CR>', { noremap = true, silent = true, desc = "Toggle summary" })
vim.api.nvim_set_keymap('n', '<Leader>rf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', { noremap = true, silent = true, desc = "Run tests in file" })
vim.api.nvim_set_keymap('n', '<Leader>rd', ':lua require("neotest").run.run({strategy = "dap"})<CR>', { noremap = true, silent = true, desc = "Debug test" })

