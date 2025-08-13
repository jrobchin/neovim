return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		keys = {
			{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
			{ "<leader>fr", "<cmd>FzfLua files resume=true<cr>", desc = "Resume finding files" },
			{ "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live grep (search content)" },
			{ "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "List buffers" },
			{ "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Search help tags" },
		},
		config = function()
			require("fzf-lua").setup()
		end,
	},
}
