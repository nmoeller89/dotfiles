return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "suketa/nvim-dap-ruby",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      require("dapui").setup()
      require("dap-ruby").setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "debug toggle breakpoint" })
      vim.keymap.set("n", "<leader>dc", function ()
        vim.fn.setenv("RUBYOPT", "-rdebug/open")
        dap.continue()
      end, { desc = "debug continue" })

      vim.keymap.set("n", "<F7>", dap.step_over, { desc = "debug step over" })
      vim.keymap.set("n", "<F8>", dap.step_into, { desc = "debug step into" })
      vim.keymap.set("n", "<F9>", dap.step_out, { desc = "debug step out" })
    end,
  },
}
