-- return {
-- "nvim-tree/nvim-tree.lua",
-- keys = {
-- { "<leader><leader>", "<cmd>:NvimTreeToggle<cr>",   desc = "open nvim tree",                 mode = "n" },
-- { "<leader>pv",       "<cmd>:NvimTreeFindFile<cr>", desc = "open nvim tree at current file", mode = "n" },
-- },
-- config = function()
-- require("nvim-tree").setup({
-- view = {
-- float = {
-- enable = true
-- }
-- }
-- })

-- local api = require("nvim-tree.api")
-- api.events.subscribe(api.events.Event.FileCreated, function(file)
-- vim.cmd("edit " .. file.fname)
-- end)
-- end
-- }

return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "echasnovski/mini.icons" },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function()
    require("oil").setup()
    vim.keymap.set("n", "<leader><leader>", "<cmd>:Oil<cr>")
    vim.keymap.set("n", "<leader>pv", "<cmd>:Oil<cr>")
  end
}
