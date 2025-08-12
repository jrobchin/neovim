vim.pack.add(
	{ "https://github.com/hedyhli/outline.nvim" },
	{ "https://github.com/epheien/outline-treesitter-provider.nvim" }
)

require("outline").setup({
	providers = {
		priority = { "lsp", "coc", "markdown", "norg", "man", "treesitter" },
	},
})

vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
