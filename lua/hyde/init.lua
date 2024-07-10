require("hyde.set")
require("hyde.remap")

require("hyde.lazy")

local augroup = vim.api.nvim_create_augroup
local HydeGroup = augroup('Hyde', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
  require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

autocmd({ "BufWritePre" }, {
  group = HydeGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

autocmd({ "BufWritePre" }, {
  group = HydeGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})


vim.opt.foldenable = false

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.loaded_matchparen = 1
