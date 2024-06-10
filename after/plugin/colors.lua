-- -- Define a Lua function ConflictsHighlight
-- function ConflictsHighlight()
--     -- Define a region pattern for conflicts
--     vim.cmd([[syn region conflict start="^<<<<<<<.*$" end="^>>>>>>>.*$" keepend contains=DiffAdd,conflictCommon,DiffText]])

--     -- Define a region pattern for added lines in conflict
--     vim.cmd([[syn region DiffAdd start="^<<<<<<<.*$" end="^|||||||\|=======$"me=e-7 keepend contains=conflictMarker]])

--     -- Define a region pattern for common lines in conflict
--     vim.cmd([[syn region conflictCommon start="^|||||||.*$" end="^=======$"me=e-7 keepend contains=conflictMarker]])

--     -- Define a region pattern for text after conflict markers
--     vim.cmd([[syn region DiffText start="^=======" end="^>>>>>>>.*$" keepend contains=conflictMarker]])

--     -- Define a match pattern for conflict markers
--     vim.cmd([[syn match conflictMarker "^\(<<<<<<<.*\||||||||.*\|>>>>>>>.*\|=======\)$" contained]])
-- end

-- -- Set up an autocmd to call ConflictsHighlight() when a buffer is entered
-- vim.cmd([[augroup MyColors]])
-- vim.cmd([[autocmd!]])
-- vim.cmd([[autocmd BufEnter * lua ConflictsHighlight()]])
-- vim.cmd([[augroup END]])


function ColorMyPencils(color)
	-- set the color scheme

	-- color = color or "ayu"
	-- color = color or "darkplus"
	color = color or "ayu"
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
