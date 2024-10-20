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
        require('neotest-playwright').adapter({
		options = {
	                 persist_project_selection = true,
	                enable_dynamic_test_discovery = true,
		        },
		}),
        }
});

