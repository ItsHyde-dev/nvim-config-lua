require('rose-pine').setup({
    disable_background = true
})

require("nightfox").setup({
  options = {
    transparent=true,
  }
})

function ColorMyPencils(color)
	color = color or "carbonfox"
	vim.cmd.colorscheme(color)

end

ColorMyPencils()
