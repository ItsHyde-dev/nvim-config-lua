local dap = require("dap")

vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
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
