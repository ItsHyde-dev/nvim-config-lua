return {
  "rcarriga/nvim-dap-ui",
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require('dap')
      require("dapui").setup({
        layouts = {
          {
            elements = {
              "breakpoints",
              "watches",
            },
            size = 40,
            position = "left",
          },
          {
            elements = {
              "repl",
              "console",
            },
            size = 0.25,
            position = "bottom",
          },
        },
        floating = {
          max_height = nil,
          max_width = nil,
          border = "single",
          mappings = {
            close = { "q", "<Esc>" },
          },
        },
        windows = { indent = 1 },
        render = {
          max_type_length = nil,
          max_value_lines = 100,
        }
      }
    )
    require("dap-go").setup()
    require("mason").setup()

    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
    vim.keymap.set("n", "<leader>d", ":lua require'dapui'.toggle()<CR>")
    vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
    vim.keymap.set("n", "<F6>", ":lua require'dap'.step_over()<CR>")
    vim.keymap.set("n", "<F7>", ":lua require'dap'.step_into()<CR>")
    vim.keymap.set("n", "<F8>", ":lua require'dap'.step_out()<CR>")

    dap.configurations.typescript = {
      {
        type = "node2",
        name = "node attach",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
      }
    }

    dap.configurations.javascript = dap.configurations.typescript
    local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
    dap.adapters.node2 = {
      type = "executable",
      command = "node",
      args = { mason_path .. "packages/node-debug2-adapter/out/src/nodeDebug.js" }
    }

    dap.configurations.go = {
      {
        type = "go",         -- Which adapter to use
        name = "Debug",      -- Human readable name
        request = "launch",  -- Whether to "launch" or "attach" to program
        program = "${file}", -- The buffer you are focused on when running nvim-dap
      },
    }

    dap.adapters.go = {
      type = "server",
      port = "${port}",
      executable = {
        command = vim.fn.stdpath("data") .. '/mason/bin/dlv',
        args = { "dap", "-l", "127.0.0.1:${port}" },
      },
    }

    end
  },
  'leoluz/nvim-dap-go',
  { "mxsdev/nvim-dap-vscode-js", dependencies = { "mfussenegger/nvim-dap" } },
}
