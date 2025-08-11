vim.pack.add({ { src = "https://github.com/nvim-lua/plenary.nvim", version = "master" } })
vim.pack.add({ "https://github.com/sindrets/diffview.nvim" })

require("diffview").setup()

vim.pack.add({ "https://github.com/NeogitOrg/neogit" })

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
