require("neotest").setup {
  consumers = {
    -- add to your list of consumers
    playwright = require("neotest-playwright.consumers").consumers,
  },
  adapters = {
    require "neotest-jest" {
      jestCommand = "node_modules/jest/bin/jest.js",
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
          local result = file_path:find "%.test%.[tj]sx?$" ~= nil or file_path:find "%.spec%.[tj]sx?$" ~= nil
          return result
        end,
      },
    },
  },
}
