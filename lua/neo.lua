require("neotest").setup {
  consumers = {
    -- add to your list of consumers
    playwright = require("neotest-playwright.consumers").consumers,
  },
  adapters = {
    require "neotest-jest" {
      jestCommand = "npm test --",
      jestConfigFile = "jest.config.js",
      env = { CI = true },
      jest_test_discovery = true,
      cwd = function(path) return vim.fn.getcwd() end,
    },
    require("neotest-playwright").adapter {
      options = {
        persist_project_selection = true,
        enable_dynamic_test_discovery = true,
        is_test_file = function(file_path)
          local isNil = file_path

          local result = file_path:find "e2e/.*%.spec%.ts$" ~= nil
          return result
        end,
        experimental = {
          telescope = {
            -- If true, a telescope picker will be used for `:NeotestPlaywrightProject`.
            -- Otherwise, `vim.ui.select` is used.
            -- In normal mode, `<Tab>` toggles the project under the cursor.
            -- `<CR>` (enter key) applies the selection.
            enabled = true,
            opts = {},
          },
        },
      },
    },
  },
}
