require('rose-pine').setup({
  disable_background = true,
})

require("nightfox").setup({
  options = {
    transparent = true,
  },
  palettes = {
    all = {
      bg1 = "#040c1f"
    }
  }
})

require("gruvbox").setup({
  transparent_mode = true
})

require("catppuccin").setup({
  transparent_background = true,
})

function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)
end

ColorMyPencils()
