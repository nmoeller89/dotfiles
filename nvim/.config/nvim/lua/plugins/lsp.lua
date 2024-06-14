return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "taplo",
          "html",
          "cssls",
          "tailwindcss",
          "tsserver",
          "eslint",
          "solargraph",
          "standardrb",
        }
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.taplo.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.cssls.setup({
        capabilities = capabilities
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.eslint.setup({
        capabilities = capabilities
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities
      })
      lspconfig.standardrb.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "<leader>fD", vim.lsp.buf.declaration, { desc = "declaration" })
      vim.keymap.set("n", "<leader>fd", vim.lsp.buf.definition, { desc = "definition" })
      vim.keymap.set("n", "<leader>fi", vim.lsp.buf.implementation, { desc = "implementation" })
      vim.keymap.set("n", "<leader>fr", vim.lsp.buf.references, { desc = "references" })

      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code action" })
      vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "code format" })

      vim.keymap.set("n", "<leader>hi", vim.lsp.buf.hover, { desc = "information" })
      vim.keymap.set("n", "<leader>hd", vim.diagnostic.open_float, { desc = "diagnostic" })
    end,
  },
}
