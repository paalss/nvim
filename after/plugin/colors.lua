function ColorMyPencils(color)
	-- set the color scheme

	-- color = color or "darkplus"
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)

	-- set transparent background
	-- 
	-- kommenterte følgende ut, pga at det ikke funker helt.
	-- du kan uansett justere gjennomsiktighet i Ubuntu terminalen
	-- i 'egenskaper'
	--
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
