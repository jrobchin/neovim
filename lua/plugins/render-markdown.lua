vim.pack.add({ "https://github.com/MeanderingProgrammer/render-markdown.nvim" })

require("render-markdown").setup({
	file_types = { "markdown", "codecompanion" },
	render_modes = true,
	sign = {
		enabled = false,
	},
})
