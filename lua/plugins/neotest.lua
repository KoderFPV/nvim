return  {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest",
		'thenbe/neotest-playwright',
 	keys = {
		{
			'<leader>ta',
			function()
				require('neotest-playwright').playwright.attachment()
			end,
			desc = 'Launch test attachment',
		},
	},     dependencies = 'nvim-telescope/telescope.nvim',
	},
}
