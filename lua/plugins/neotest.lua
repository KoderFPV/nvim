return  {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest",
    {
	'thenbe/neotest-playwright',
	keys = {
		{
			'<leader>rp',
			function()
				require('neotest').playwright.attachment()
			end,
			desc = 'Launch test attachment',
		},
	},
}
	}
}
