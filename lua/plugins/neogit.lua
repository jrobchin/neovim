vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim", version = "master" },
	{ src = "https://github.com/sindrets/diffview.nvim" },
	{ src = "https://github.com/NeogitOrg/neogit" },
})

require("diffview").setup()

local neogit = require("neogit")
neogit.setup({
	integrations = {
		diffview = true,
	},
})

local keymap = vim.keymap.set

keymap("n", "<Leader>gs", function()
	require("neogit").open()
end, { desc = "Neogit Status" })
