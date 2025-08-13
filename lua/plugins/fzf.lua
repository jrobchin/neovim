return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		keys = {
			{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
			{ "<leader>fF", "<cmd>FzfLua files resume=true<cr>", desc = "Resume finding files" },
			{ "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live grep (search content)" },
			{ "<leader>fG", "<cmd>FzfLua live_grep resume=true<cr>", desc = "Live grep (search content)" },
			{ "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Find help tags" },
			{ "<leader>fi", "<cmd>FzfLua builtin<cr>", desc = "Find fzf buildins" },
			{ "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "Find keymaps" },
			{ "<leader><leader>", "<cmd>FzfLua buffers<cr>", desc = "List buffers" },
			{ "<leader>/", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Find fzf buildins" },
			{ "<leader>'", "<cmd>FzfLua lgrep_curbuf resume=true<cr>", desc = "Find fzf buildins" },
		},
		config = function()
			require("fzf-lua").setup()
		end,
	},
}
