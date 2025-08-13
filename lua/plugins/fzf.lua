return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    keys = {
      { "<leader>f", "<cmd>FzfLua files<cr>",      desc = "Find files" },
      { "<leader>F", "<cmd>FzfLua live_grep<cr>",  desc = "Live grep (search content)" },
      { "<leader>b", "<cmd>FzfLua buffers<cr>",    desc = "List buffers" },
      { "<leader>h", "<cmd>FzfLua help_tags<cr>",  desc = "Search help tags" },
      { "<leader>o", "<cmd>FzfLua oldfiles<cr>",   desc = "List old files" },
      { "<leader>s", "<cmd>FzfLua git_status<cr>", desc = "Git Status" },
    },
    config = function()
      require("fzf-lua").setup()
    end,
  },
}
