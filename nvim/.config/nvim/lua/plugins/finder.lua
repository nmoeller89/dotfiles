return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      { "nvim-telescope/telescope-fzf-native.nvim",     build = "make" },
      { "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
    },
    config = function()
      local telescope = require("telescope")
      local lga_actions = require("telescope-live-grep-args.actions")

      telescope.setup({
        defaults = {
          path_display = { "truncate" },
        },
        extensions = {
          live_grep_args = {
            auto_quoting = true,
            mappings = {
              i = {
                ["<C-k>"] = lga_actions.quote_prompt(),
                ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
              },
            },
          }
        }
      })

      telescope.load_extension("fzf")
      telescope.load_extension("live_grep_args")

      vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "find old files" })
      vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "find open buffers" })
      vim.keymap.set("n", "<leader>fa", "<cmd>Telescope find_files hidden=true no_ignore=true<CR>", { desc = "find all files" })
      vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "find files" })
      vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "find word" })
      vim.keymap.set("n", "<leader>fW", "<cmd>Telescope live_grep_args live_grep_args<CR>", { desc = "find word with args" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end,
  },
}
