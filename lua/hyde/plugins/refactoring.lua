return {
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" }
    },
    config = function()
      require("telescope").load_extension("refactoring")

      vim.keymap.set(
        { "n", "x" },
        "<leader>rt",
        function() require('telescope').extensions.refactoring.refactors() end
      )

      vim.keymap.set("x", "<leader>rr", ":Refactor extract <CR>")
    end
  }
}
