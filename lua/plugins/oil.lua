vim.pack.add({"https://github.com/stevearc/oil.nvim"})

require('oil').setup({
  view_options = {
    show_hidden = true
  },
  win_options = {
    signcolumn = "yes:2"
  }
})

vim.pack.add({"https://github.com/refractalize/oil-git-status.nvim"})

require('oil-git-status').setup()
