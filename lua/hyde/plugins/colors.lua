return {
  {
    'rose-pine/neovim',
    config = function()
    require('rose-pine').setup({
      disable_background = true,
    })

    vim.cmd.colorscheme("rose-pine")

    end
  },
    'EdenEast/nightfox.nvim',
    {
      "catppuccin/nvim",
      name = "catppuccin"
    },
    'ellisonleao/gruvbox.nvim'
}

