return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>Gp", ":Gitsigns preview_hunk<CR>", { desc = "preview hunk" })
      vim.keymap.set("n", "<leader>Gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "blame" })
    end
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      vim.keymap.set("n", "<leader>GG", ":LazyGit<CR>", { desc = "open lazygit" })
    end
  },
}
