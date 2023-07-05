require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color)
	color = color or "vim-monokai-tasty"
	vim.cmd.colorscheme(color)

end

ColorMyPencils()
