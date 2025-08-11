vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim", version = "master" },
})

vim.pack.add({ "https://github.com/olimorris/codecompanion.nvim" })

require("codecompanion").setup({
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
})

local keymap = vim.keymap.set

-- CodeCompanion keymaps
-- Open CodeCompanion Chat window in normal or visual mode
keymap({ "n", "v" }, "<leader>cc", "<cmd>CodeCompanionChat<CR>", { desc = "Open CodeCompanion Chat" })
-- Start inline assistant in normal or visual mode
keymap({ "n", "v" }, "<leader>ci", "<cmd>CodeCompanion<CR>", { desc = "Start CodeCompanion Inline Assistant" })
-- Open action palette in normal or visual mode
keymap({ "n", "v" }, "<leader>ca", "<cmd>CodeCompanionActions<CR>", { desc = "Open CodeCompanion Action Palette" })
