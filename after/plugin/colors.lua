-- Set background color for added lines
-- vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#A6E22E", fg = "NONE", ctermfg = "NONE", ctermbg = "Green" })

-- Set background color for removed lines
-- vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#F92672", fg = "NONE", ctermfg = "NONE", ctermbg = "Red" })

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

-- require("tokyonight").setup({
--   -- use the night style
--   style = "night",
--   -- disable italic for functions
--   styles = {
--     functions = {}
--   },
--   -- Change the "hint" color to the "orange" color, and make the "error" color bright red
--   on_colors = function(colorsparam)
--     -- colors.hint = colors.orange
--     -- colors.error = "#ff0000"
--     colors.background = "#000"
--   end
-- })

-- from tokyonight help configuration:
    -- local colors = require("tokyonight.colors").setup() -- pass in any of the config options as explained above
    -- local util = require("tokyonight.util")
    
    -- aplugin.background = colors.bg_dark
    -- aplugin.my_error = util.lighten(colors.red1, 0.3) -- number between 0 and 1. 0 results in white, 1 results in red1


function ColorMyPencils(color)
	-- set the color scheme

	-- color = color or "darkplus"
	-- color = color or "pop-punk"
	color = color or "tokyonight-night"
	-- color = color or "nightfox"
	-- color = color or "github_dark_high_contrast"
	-- color = color or "github_dark"
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


