return {
	{
		"vague2k/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vague").setup({})
			vim.cmd("colorscheme vague")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{ "folke/todo-comments.nvim", opts = {} },
	{
		"hedyhli/outline.nvim",
		keys = {
			{ "<leader>o", "<cmd>Outline<cr>", desc = "Toggle outline" },
		},
		config = function()
			require("outline").setup({
				providers = {
					priority = { "lsp", "coc", "markdown", "norg", "treesitter" },
				},
			})
		end,
		event = "VeryLazy",
		dependencies = {
			"epheien/outline-treesitter-provider.nvim",
		},
	},
	{
		"NMAC427/guess-indent.nvim",
	},
	-- {
	-- 	"sphamba/smear-cursor.nvim",
	-- 	opts = {},
	-- },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
}
