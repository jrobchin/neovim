vim.pack.add({"https://github.com/ibhagwan/fzf-lua"})

require('fzf-lua').setup({})

local keymap = vim.keymap.set

keymap('n', '<Leader>f', function() vim.cmd('FzfLua files') end, { desc = 'Find files' })
keymap('n', '<Leader>F', function() vim.cmd('FzfLua live_grep') end, { desc = 'Live grep (search content)' })
keymap('n', '<Leader>b', function() vim.cmd('FzfLua buffers') end, { desc = 'List buffers' })
keymap('n', '<Leader>h', function() vim.cmd('FzfLua help_tags') end, { desc = 'Search help tags' })
keymap('n', '<Leader>o', function() vim.cmd('FzfLua oldfiles') end, { desc = 'List old files' })
keymap('n', '<Leader>s', function() vim.cmd('FzfLua git_status') end, { desc = 'Git Status' })
