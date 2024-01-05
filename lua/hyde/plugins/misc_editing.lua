return {
  "chrisbra/vim-commentary",
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup({})
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup({}) end
  },
  "windwp/nvim-ts-autotag",
}
