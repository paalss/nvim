-- colors reference https://github.com/folke/tokyonight.nvim/blob/main/extras/lua/tokyonight_night.lua
-- nyttig referanse
-- https://github.com/imvasen/dotfiles-nvim/blob/267bfa7a3d04ee8da8f0dc9a42310ae0768e5674/lua/plugins/tokyonight.lua#L14
-- https://github.com/greganswer/.config/blob/b25d4b306413eac8f47b16e377f98d655314ea54/nvim/lua/config/lazy.lua#L30
-- https://github.com/MrQuatrelle/nvim/blob/38658cd598f8e7cdd358708cfd48e1456c5bc219/lua/mrquatrelle/lazy/tokyonight.lua#L30
-- https://github.com/curtbushko/nvim/blob/3dcc4392ec06ce9b2b27fc66029db256311b4118/lua/plugins/tokyonight.lua#L20
require("tokyonight").setup({
  style = "night",
  styles = {
    functions = {}
  },
  on_colors = function(colors)
    colors.diff = {
      add = "#194a0e",
      change = "#523a0a",
      delete = "#58171d",
      text = "#564343"
    }
    colors.git = {
      add = "#12dd00",
      change = "#32290f",
      delete = "#ff001e",
      ignore = "#71737b"
    }
    -- colors.bg_highlight = "#353b4e"
    colors.comment = "#869b84"
  end,
  on_highlights = function(hl, colors)
    hl.ColorColumn = { bg = colors.green }
  end,
})

function ColorMyPencils(color)
  -- color = color or "pop-punk"
  color = color or "tokyonight-night"
  vim.cmd.colorscheme(color)
end

ColorMyPencils()
