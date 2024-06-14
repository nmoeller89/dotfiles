vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>sh", "<cmd>nohlsearch<CR>", { desc = "turn off search highlighting" })

keymap.set("n", "<leader>wv", "<C-w>v", { desc = "window split vertical" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "window split horizontal" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "window split equal size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "window close current" })
