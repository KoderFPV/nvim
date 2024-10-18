require("neotest").setup({
  adapters = {

  require('neotest-jest')({
          jestCommand = "npm test --",
          jestConfigFile = "jest.config.js",
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        }),
  }
});


vim.api.nvim_set_keymap('n', '<Leader>rr', ':lua require("neotest").run.run({ enter = true })<CR>', { noremap = true, silent = true, desc = "Run test" })

vim.api.nvim_set_keymap('n', '<Leader>rs', ':lua require("neotest").run.stop()<CR>', { noremap = true, silent = true, desc = "Stop test" })


vim.api.nvim_set_keymap('n', '<Leader>ro', ':lua require("neotest").output_panel.open()<CR>', { noremap = true, silent = true, desc = "Open output" })
vim.api.nvim_set_keymap('n', '<Leader>rO', ':lua require("neotest").output.open({ enter = true })<CR>', { noremap = true, silent = true, desc = "Open output (enter)" })

vim.api.nvim_set_keymap('n', '<Leader>ri', ':lua require("neotest").summary.toggle()<CR>', { noremap = true, silent = true, desc = "Toggle summary" })
vim.api.nvim_set_keymap('n', '<Leader>rf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', { noremap = true, silent = true, desc = "Run tests in file" })
