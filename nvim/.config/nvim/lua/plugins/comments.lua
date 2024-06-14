return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      vim.keymap.set("n", "<leader>tl", ":TodoQuickfix<CR>", { desc = "todo list" }),
      vim.keymap.set("n", "<leader>tf", ":TodoTelescope<CR>", { desc = "todo finder" })
    }
  }
}
