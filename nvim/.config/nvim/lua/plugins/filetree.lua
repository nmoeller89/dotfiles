return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = true,
        hide_gitignored = false,
        never_show = {
          ".DS_Store",
          "thumbs.db",
        },
      },
    },
  },
  config = function(_, opts)
    vim.keymap.set("n", "<leader>e", ":Neotree toggle filesystem reveal current<CR>", { desc = "file tree toggle" })

    require("neo-tree").setup(opts)
  end
}
