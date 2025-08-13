return {
	{
		"olimorris/codecompanion.nvim",
		lazy = false,
		opts = {
			strategies = {
				chat = {
					adapter = "openrouter",
					keymaps = {
						completion = {
							modes = {
								i = "<C-Space>",
							},
							index = 1,
							callback = "keymaps.completion",
							description = "Completion Menu",
						},
					},
				},
				inline = {
					adapter = "openrouter",
				},
				cmd = {
					adapter = "openrouter",
				},
			},
			adapters = {
				openrouter = function()
					return require("codecompanion.adapters").extend("openai_compatible", {
						env = {
							url = "https://openrouter.ai/api",
							api_key = "OPENROUTER_API_KEY",
							chat_url = "/v1/chat/completions",
						},
						schema = {
							model = {
								default = "anthropic/claude-3.7-sonnet",
							},
						},
					})
				end,
			},
			display = {
				action_palette = {
					provider = "fzf_lua",
				},
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		keys = {
			{ "<leader>ca", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "CodeCompanion actions" },
			{ "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", mode = { "n", "v" }, desc = "CodeCompanion toggle chat" },
			{ "<leader>ci", "<cmd>CodeCompanion<cr>", mode = { "n", "v" }, desc = "CodeCompanion inline" },
		},
	},
	{
		"echasnovski/mini.diff",
		config = function()
			local diff = require("mini.diff")
			diff.setup({
				-- Disabled by default
				source = diff.gen_source.none(),
			})
		end,
	},
	{
		"HakonHarnes/img-clip.nvim",
		opts = {
			filetypes = {
				codecompanion = {
					prompt_for_file_name = false,
					template = "[Image]($FILE_PATH)",
					use_absolute_path = true,
				},
			},
		},
	},
}
