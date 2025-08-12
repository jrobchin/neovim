return {
	-- Command and arguments to start the server.
	cmd = { "gopls" },

	-- Filetypes to automatically attach to.
	filetypes = { "go" },

	-- Sets the "root directory" to the parent directory of the file in the
	-- Nested lists indicate equal priority, see |vim.lsp.Config|.
	root_markers = { { "go.mod", "go.sum" }, ".git" },

	settings = {
		build = {
			buildFlags = { "-tags=integration" },
		},
	},
}
