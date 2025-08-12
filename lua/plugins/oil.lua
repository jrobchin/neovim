vim.pack.add({ "https://github.com/stevearc/oil.nvim" })

local oil = require("oil")

local detail = false
oil.setup({
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

vim.keymap.set("n", "<leader>e", function()
	oil.toggle_float()
end, { desc = "Open Oil file floating" })
vim.keymap.set("n", "<leader>E", function()
	oil.open()
end, { desc = "Open Oil file explorer" })

vim.pack.add({ "https://github.com/refractalize/oil-git-status.nvim" })

require("oil-git-status").setup()
