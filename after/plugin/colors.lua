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

require("catppuccin").setup({})

function ColorMyPencils(color)
  color = color or "catppuccin-macchiato"
  vim.cmd.colorscheme(color)
end

ColorMyPencils()
