return {
  "olexsmir/gopher.nvim",
  ft = "go",
  dependencies = { -- dependencies
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function(_, opts)
    require("gopher").setup(opts)
    vim.keymap.set("n", "<leader>er", "<cmd>GoIfErr<cr>", { silent = true })
  end,
  build = function()
    vim.cmd [[silent! GoInstallDeps]]
  end
}
