return {
  {
    "ThePrimeagen/refactoring.nvim",
    keys={
      {"<leader>rr",  ":Refactor extract <CR>", desc="Extract to function", mode="x"}
    },
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
    end
  }
}
