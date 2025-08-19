-- options
--------------------------------------------------------------------------------
-- Relative and absolute line numbers combined
vim.opt.number = true
vim.opt.relativenumber = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Cursorline
vim.opt.cursorline = true

-- Spelling
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Preview substitutions
vim.opt.inccommand = "split"

-- Text wrapping
vim.opt.wrap = true
vim.opt.breakindent = true

-- Tab stops
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Window splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Save undo history
vim.opt.undofile = true

-- Set the default border for all floating windows
vim.opt.winborder = "rounded"

-- Allow scrolling past the end of the file
vim.opt.scrolloff = 8 -- This keeps cursor centered when possible
vim.opt.sidescrolloff = 8 -- Horizontal scrolling offset
