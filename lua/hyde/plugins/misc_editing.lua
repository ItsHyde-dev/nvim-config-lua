return {
  {
    "chrisbra/vim-commentary",
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup({}) end
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "javascript" },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  }
}
