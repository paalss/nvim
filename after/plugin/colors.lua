function ColorMyPencils(color)
	-- set the color scheme
	-- default color settes til rose-pine
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- set transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
