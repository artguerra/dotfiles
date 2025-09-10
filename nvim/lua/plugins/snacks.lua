return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    animate = { enabled = true },
    bigfile = { enabled = true },
    image = { enabled = true },
    input = { enabled = true },
    notifier = {
      enabled = true,
      config = function()
        vim.keymap.set("n", "<leader>ns", ":lua Snacks.notifier.show_history()<CR>", { desc = "Show notification history" })
      end,
    }, 
    quickfile = { enabled = true },
  },
}
