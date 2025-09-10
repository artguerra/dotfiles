return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("Comment").setup()

    local wk = require('which-key')

    wk.add({
      {
        mode = { 'n', 'v' },
        { "<leader>g", group = "Comment" },
        { "<leader>gb", desc = "Toggle block comment" },
        { "<leader>gbc", desc = "Comment whole block" },
        { "<leader>gc", desc = "Toggle line comment" },
        { "<leader>gcc", desc = "Comment whole line" },
      }
    })
  end,
}

