-- options
--------------------------------------------------------------------------------
local opt = vim.opt

-- Confirm before exiting a modified buffer
opt.confirm = true

-- Relative and absolute line numbers combined
opt.number = true
opt.relativenumber = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Cursorline
opt.cursorline = true

-- Spelling
opt.spelllang = "en_us"
opt.spell = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Preview substitutions
opt.inccommand = "split"

-- Text wrapping
opt.wrap = true
opt.breakindent = true

-- Tab stops
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2

-- Window splitting
opt.splitright = true
opt.splitbelow = true

-- Save undo history
opt.undofile = true

-- Set the default border for all floating windows
opt.winborder = "rounded"

-- Allow scrolling past the end of the file
opt.scrolloff = 8 -- This keeps cursor centered when possible
opt.sidescrolloff = 8 -- Horizontal scrolling offset

-- Global statusline
opt.laststatus = 3
opt.showmode = false

-- Scrolling
opt.smoothscroll = true

-- Fill chars
opt.fillchars = {
	foldopen = "",
	foldclose = "",
}

-- Folding
local function foldexpr()
	local buf = vim.api.nvim_get_current_buf()
	if vim.b[buf].ts_folds == nil then
		-- as long as we don't have a filetype, don't bother
		-- checking if treesitter is available (it won't)
		if vim.bo[buf].filetype == "" then
			return "0"
		end
		if vim.bo[buf].filetype:find("dashboard") then
			vim.b[buf].ts_folds = false
		else
			vim.b[buf].ts_folds = pcall(vim.treesitter.get_parser, buf)
		end
	end
	return vim.b[buf].ts_folds and vim.treesitter.foldexpr() or "0"
end

opt.foldlevel = 99
opt.foldexpr = "v:foldexpr()"
opt.foldmethod = "expr"
opt.foldtext = ""
