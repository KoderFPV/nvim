require("neotest").setup({
      consumers = {
		-- add to your list of consumers
		playwright = require('neotest-playwright.consumers').consumers,
	},
  adapters = {
          require('neotest-jest')({
                jestCommand = "npm test --",
                jestConfigFile = "jest.config.js",
                env = { CI = true },
      jest_test_discovery = true,
                cwd = function(path)
                        return vim.fn.getcwd()
                end,
          }),
        require('neotest-playwright').adapter({
		options = {
	                 persist_project_selection = true,
	                enable_dynamic_test_discovery = true,
		        },
		}),
        }
});

