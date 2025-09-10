return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
          },
        },
      },
    })

    -- keymaps
    local builtin = require("telescope.builtin")
    
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
    vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in cwd" })
    vim.keymap.set("n", "<leader>fu", builtin.grep_string, { desc = "Find string under cursor in cwd" })
    vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Find available plugin/user commands" })
  end,
}
