return {
  "nvim-neotest/neotest",
  cond = not vim.g.started_by_foreign,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/neotest-jest",
    {
      "thenbe/neotest-playwright",
      dependencies = "nvim-neotest/neotest", -- this is needed to avoid an error when neotest is lazy-loaded as a result of a key defined in neotest-playwright's config
      dev = false,
      keys = {
        { "<leader>t.", "<cmd>NeotestPlaywrightRefresh<cr>", desc = "[playwright] Refresh" },
        { "<leader>tp", "<cmd>NeotestPlaywrightProject<cr>", desc = "[playwright] Set projects" },
        { "<leader>tp", "<cmd>NeotestPlaywrightPreset<cr>", desc = "[playwright] Set preset" },
        -- stylua: ignore
        { '<leader>ta', function() require('neotest').playwright.attachment() end, desc = '[playwright] Launch attachment' },
      },
    },
  },
  keys = {
    -- stylua: ignore start
    { '<leader>tr', function() require('neotest').run.run() end, desc = 'Run test' },
    { '<leader>tl', function() require('neotest').run.run_last() end, desc = 'Run last' },
    { '<leader>td', function() require("neotest").run.run({strategy = "dap", interactive = true}) end, desc = 'Debug test' },
    { '<leader>tf', function() require('neotest').run.run(vim.fn.expand('%')) end, desc = 'Run tests in file' },
    { '<leader>ts', function() require('neotest').run.stop() end, desc = 'Stop test' },
    { '<leader>to', function() require('neotest').output.open({ enter = true }) end, desc = 'Open output' },
    { '<leader>tt', function() require('neotest.consumers.summary').toggle() end, desc = 'Toggle test tree' },
    { '<leader>tO', function() require('neotest.consumers.output_panel').toggle() end, desc = 'Toggle output panel' }
,
    -- stylua: ignore end
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-jest" {
          jestCommand = "node_modules/jest/bin/jest.js",
          jestConfigFile = "jest.config.js",
          jest_test_discovery = true,
          cwd = function(path) return vim.fn.getcwd() end,
        },
        require("neotest-playwright").adapter {
          options = {
            persist_project_selection = true,
            enable_dynamic_test_discovery = true,
            -- filter_dir = function(name, rel_path, root) return name ~= 'node_modules' end,
            ---@param file_path string
            is_test_file = function(file_path)
              local result = file_path:match "e2e/.+.spec.ts" ~= nil
              return result
            end,
            experimental = {
              telescope = {
                enabled = true,
                -- opts = {},
              },
            },
          },
        },
      },
      consumers = {
        playwright = require("neotest-playwright.consumers").consumers,
      },
    }
  end,
}
