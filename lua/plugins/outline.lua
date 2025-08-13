return {
  "hedyhli/outline.nvim",
  keys = {
    { "<leader>o", "<cmd>Outline<cr>", desc = "Toggle outline"}
  },
  config = function()
    require('outline').setup({
      providers = {
        priority = { 'lsp', 'coc', 'markdown', 'norg', 'treesitter' },
      },
    })
  end,
  event = "VeryLazy",
  dependencies = {
    'epheien/outline-treesitter-provider.nvim'
  }
}
