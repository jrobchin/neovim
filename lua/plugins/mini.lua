return {
  {
    "echasnovski/mini.nvim",
    version = false, -- always use latest
    config = function()
      require("mini.icons").setup()
      require("mini.pairs").setup()
      require("mini.statusline").setup()

      local diff = require("mini.diff")
      diff.setup({
        -- https://codecompanion.olimorris.dev/installation.html#mini-diff
        source = diff.gen_source.none(),
      })
    end,
  },
}
