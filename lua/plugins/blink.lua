vim.pack.add({
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/saghen/blink.cmp", version = "1.*" },
})

require("blink.cmp").setup({
	fuzzy = {
		implementation = "prefer_rust",
	},
	snippets = { preset = "luasnip" },
	sources = {
		default = { "lsp", "path", "snippets", "buffer", "codecompanion" },
	},
})
