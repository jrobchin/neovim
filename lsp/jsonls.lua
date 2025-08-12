return {
	-- Command and arguments to start the server.
	cmd = { "jsonls" },

	-- Filetypes to automatically attach to.
	filetypes = { "json" },

	-- Sets the "root directory" to the parent directory of the file in the
	-- Nested lists indicate equal priority, see |vim.lsp.Config|.
	root_markers = { ".git" },

	-- Specific settings to send to the server. The schema for this is
	-- defined by the server. For example the schema for lua-language-server
	-- can be found here https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
	settings = {},
}
