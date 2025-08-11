vim.pack.add({ "https://github.com/echasnovski/mini.nvim" })

require("mini.icons").setup()
require("mini.pairs").setup()

local diff = require("mini.diff")
diff.setup({
	-- https://codecompanion.olimorris.dev/installation.html#mini-diff
	source = diff.gen_source.none(),
})
