local wk = require("which-key")

-- Quickfix toggle
local function toggle_quickfix()
	local is_open = false
	for _, win in ipairs(vim.fn.getwininfo()) do
		if win.quickfix == 1 then
			is_open = true
			break
		end
	end
	if is_open then
		vim.cmd("cclose")
	else
		vim.cmd("copen")
	end
end

-- Location list toggle (for current window)
local function toggle_loclist()
	local ll = vim.fn.getloclist(0, { winid = 0 })
	if ll.winid ~= 0 then
		vim.cmd("lclose")
	else
		vim.cmd("lopen")
	end
end

wk.add({
	{
		mode = { "n", "x" },

		-- Navigation
		{ "j", "gj", desc = "Navigate down (visual line)" },
		{ "k", "gk", desc = "Navigate up (visual line)" },
		{ "<Down>", "gj", desc = "Navigate down (visual line)" },
		{ "<Up>", "gk", desc = "Navigate up (visual line)" },
		{ "<C-l>", "<cmd>set hlsearch!<cr><C-l>", desc = "Toggle search highlighting" },

		-- Files
		{ "<leader>ww", "<cmd>write<cr>", desc = "Write file" },
		{ "<leader>wa", "<cmd>wall<cr>", desc = "Write all files" },

		-- Buffers
		{
			"<leader>b",
			group = "Buffers",
		},
		{ "<leader>bd", "<cmd>bdelete<cr>", desc = "Delete buffer" },
		{ "<leader>bD", "<cmd>bdelete!<cr>", desc = "Force delete buffer" },
		{ "<leader>bo", "<cmd>%bd|e#<cr>", desc = "Delete all buffers except current" },
		{ "<leader>ba", "<cmd>bufdo bd<cr>", desc = "Delete all buffers" },
		{
			"<leader>bp",
			function()
				local path = vim.fn.expand("%:.")
				vim.fn.setreg("+", path)
				vim.notify("Copied relative path: " .. path)
			end,
			desc = "Copy Relative Path",
		},
		{
			"<leader>bP",
			function()
				local path = vim.fn.expand("%:p")
				vim.fn.setreg("+", path)
				vim.notify("Copied absolute path: " .. path)
			end,
			desc = "Copy Absolute Path",
		},

		-- System clipboard
		{ "<leader>y", "\"+y", desc = "Copy to system clipboard" },
		{ "<leader>p", "\"+p", desc = "Paste from system clipboard after cursor" },
		{ "<leader>P", "\"+P", desc = "Paste from system clipboard before cursor" },

		-- Toggles
		{ "<leader>q", toggle_quickfix, desc = "Toggle quickfix list" },
		{ "<leader>l", toggle_loclist, desc = "Toggle location list" },

		-- LSP
		{
			"gl",
			function()
				vim.diagnostic.open_float()
			end,
			desc = "Open floating diagnostics",
		},

		-- Links
		{ "gx", "<esc>:URLOpenUnderCursor<cr>", desc = "Open URL under cursor" },

		-- Spelling
		{ "<leader>sf", "1z=", desc = "Fix spelling with the first option" },
	},
	{
		mode = { "i" },
		{ "jk", "<esc>", desc = "Exit insert mode" },
	},
})
