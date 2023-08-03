local dap = require("dap")
require("dapui").setup(
  {
    layouts = {
      {
        elements = {
          -- Elements can be strings or table with id and size keys.
          "breakpoints",
          "watches",
        },
        size = 40, -- 40 columns
        position = "left",
      },
      {
        elements = {
          "repl",
          "console",
        },
        size = 0.25, -- 25% of total lines
        position = "bottom",
      },
    },
    floating = {
      max_height = nil, -- These can be integers or a float between 0 and 1.
      max_width = nil, -- Floats will be treated as percentage of your screen.
      border = "single", -- Border style. Can be "single", "double" or "rounded"
      mappings = {
        close = { "q", "<Esc>" },
      },
    },
    windows = { indent = 1 },
    render = {
      max_type_length = nil, -- Can be integer or nil.
      max_value_lines = 100, -- Can be integer or nil.
    }
  }
)
require("dap-go").setup()
require("mason").setup()
require("mason-nvim-dap").setup()

vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
-- vim.keymap.set("n", "<leader>do", ":lua require'dapui'.open()<CR>")
-- vim.keymap.set("n", "<leader>dc", ":lua require'dapui'.close()<CR>")
vim.keymap.set("n", "<leader>d", ":lua require'dapui'.toggle()<CR>")
vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F6>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F7>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F8>", ":lua require'dap'.step_out()<CR>")


-- type = 'executable',
-- command = 'node',
-- args = { os.getenv('HOME') .. '/vscode-go/dist/debugAdapter.js' },
-- }

-- dap.configurations.go = {
-- {
-- type = 'go',
-- name = 'Debug',
-- request = 'launch',
-- showLog = false,
-- program = "${file}",
-- dlvToolPath = vim.fn.exepath('dlv') -- Adjust to where delve is installed
-- },
-- }

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
