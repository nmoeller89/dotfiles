return {
  "folke/which-key.nvim",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    local wk = require("which-key")

    -- in neo tree
    -- <shift-h> toggle hidden files

    -- in normal mode
    -- <C-s> incremental selection
    -- <bs> decremental selection

    wk.register({
      c = { name = "code" },
      d = { name = "debug" },
      e = { name = "explorer" },
      f = { name = "find" },
      g = { name = "git" },
      h = { name = "help" },
      t = { name = "toggles" },
      w = { name = "window" },
    }, { prefix = "<leader>" })
  end,
}
