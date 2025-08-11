vim.pack.add({"https://github.com/nvim-lua/plenary.nvim"})
vim.pack.add({"https://github.com/sindrets/diffview.nvim"})

require('diffview').setup()

vim.pack.add({"https://github.com/NeogitOrg/neogit"})

local neogit = require('neogit')
neogit.setup({
  integrations = {
    diffview = true
  }
})

local keymap = vim.keymap.set

keymap('n', '<Leader>gs', function() require('neogit').open() end, { desc = 'Neogit Status' })
keymap('n', '<Leader>gc', function() require('neogit').commit() end, { desc = 'Neogit Commit' })
keymap('n', '<Leader>gp', function() require('neogit').pull() end, { desc = 'Neogit Pull' })
keymap('n', '<Leader>gu', function() require('neogit').push() end, { desc = 'Neogit Push' })
