return {
	{
		"echasnovski/mini.nvim",
		version = false, -- always use latest
		config = function()
			require("mini.icons").setup()
			require("mini.pairs").setup()
			require("mini.statusline").setup()
		end,
	},
}
