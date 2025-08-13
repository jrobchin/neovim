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
		{ "j", "gj", desc = "Navigate down (visual line)" },
		{ "k", "gk", desc = "Navigate up (visual line)" },
		{ "<Down>", "gj", desc = "Navigate down (visual line)" },
		{ "<Up>", "gk", desc = "Navigate up (visual line)" },
		{ "<C-l>", ":set hlsearch!<cr><C-l>", desc = "Toggle search highlighting" },

		-- Buffers
		{ "gb", "<cmd>bnext<cr>", desc = "Next buffer" },
		{ "gB", "<cmd>bprev<cr>", desc = "Previous buffer" },

		-- System clipboard
		{ "<leader>y", "\"+y", desc = "Copy to system clipboard" },
		{ "<leader>p", "\"+p", desc = "Paste from system clipboard after cursor" },
		{ "<leader>P", "\"+P", desc = "Paste from system clipboard before cursor" },

		-- Toggles
		{ "<leader>q", toggle_quickfix, desc = "Toggle quickfix list", mode = "n" },
		{ "<leader>l", toggle_loclist, desc = "Toggle location list", mode = "n" },

		-- LSP
		{
			"gl",
			function()
				vim.diagnostic.open_float()
			end,
			desc = "Open floating diagnostics",
		},
	},

	-- Insert
	{ "<Down>", "<C-\\><C-o>gj", desc = "Navigate down (visual line)", mode = "i" },
	{ "<Up>", "<C-\\><C-o>gk", desc = "Navigate up (visual line)", mode = "i" },

	-- Visual-only
	{ "<leader>x", "<Cmd>:lua<CR>", desc = "Lua: execute current selection", mode = "v" },
})
