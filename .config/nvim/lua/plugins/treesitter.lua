return {
	{
		"windwp/nvim-ts-autotag",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local treesitter = require("nvim-treesitter.configs")
			treesitter.setup({
				auto_install = true,
				highlight = {
					enable = true,
				},
				autotag = {
					enable = true,
				},
			})
		end,
	},
}
