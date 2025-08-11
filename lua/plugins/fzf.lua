vim.pack.add({ "https://github.com/ibhagwan/fzf-lua" })

require("fzf-lua").setup()

local keymap = vim.keymap.set

keymap("n", "<leader>f", function()
	vim.cmd("FzfLua files")
end, { desc = "Find files" })
keymap("n", "<leader>F", function()
	vim.cmd("FzfLua live_grep")
end, { desc = "Live grep (search content)" })
keymap("n", "<leader>b", function()
	vim.cmd("FzfLua buffers")
end, { desc = "List buffers" })
keymap("n", "<leader>h", function()
	vim.cmd("FzfLua help_tags")
end, { desc = "Search help tags" })
keymap("n", "<leader>o", function()
	vim.cmd("FzfLua oldfiles")
end, { desc = "List old files" })
keymap("n", "<leader>s", function()
	vim.cmd("FzfLua git_status")
end, { desc = "Git Status" })
