vim.pack.add({ "https://github.com/stevearc/oil.nvim" })

local detail = false
require("oil").setup({
	view_options = {
		show_hidden = true,
	},
	win_options = {
		signcolumn = "yes:2",
	},
	keymaps = {
		["gd"] = {
			desc = "Toggle file detail view",
			callback = function()
				detail = not detail
				if detail then
					require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
				else
					require("oil").set_columns({ "icon" })
				end
			end,
		},
	},
})

vim.keymap.set("n", "<leader>e", ":Oil --float<CR>", { desc = "Open Oil file floating" })
vim.keymap.set("n", "<leader>E", ":Oil<CR>", { desc = "Open Oil file explorer" })

vim.pack.add({ "https://github.com/refractalize/oil-git-status.nvim" })

require("oil-git-status").setup()
