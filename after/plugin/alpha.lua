local alpha = require 'alpha'
-- local dashboard = require 'alpha.themes.dashboard'

local head = {
  type = "text",
  val = {
    [[  /$$$$$$   /$$               /$$                  /$$              ]],
    [[ /$$__  $$ | $$              | $$                 |__/              ]],
    [[| $$  \__//$$$$$$    /$$$$$$ | $$   /$$ /$$    /$$ /$$ /$$$$$$/$$$$ ]],
    [[|  $$$$$$|_  $$_/   |____  $$| $$  /$$/|  $$  /$$/| $$| $$_  $$_  $$]],
    [[ \____  $$ | $$      /$$$$$$$| $$$$$$/  \  $$/$$/ | $$| $$ \ $$ \ $$]],
    [[ /$$  \ $$ | $$ /$$ /$$__  $$| $$_  $$   \  $$$/  | $$| $$ | $$ | $$]],
    [[|  $$$$$$/ |  $$$$/|  $$$$$$$| $$ \  $$   \  $/   | $$| $$ | $$ | $$]],
    [[ \______/   \___/   \_______/|__/  \__/    \_/    |__/|__/ |__/ |__/]],
  },
  opts = {
    position = "center",
    hl = "Type",
  },
}


local block1 = {
  type = "text",
  val = {
    [[CTRL i/TAB       Search keymaps]],
    [[CTRL p           Search files]],
    [[SPC cc           Search adjacent files]],
    [[SPC p0           Search text live]],
    [[SPC pp           Search text]],
    [[CTRL m           Open terminal (tmux pane)]],
    [[CTRL b, m        Maximize pane]],
    [[SPC vv           Open Neovim explorer]],
    [[SPC hh           Open lazy.nvim]],
    [[SPC gg           Open Lazygit]],
    [[SPC glo          Open git history]],
    [[SPC glgp         Open git history for currrent file]],
  },
  opts = {
    position = "center",
    hl = "Type",
  },
}


local opts = {
  layout = {
    { type = "padding", val = 2 },
    head,
    { type = "padding", val = 2 },
    block1,
  }
}
alpha.setup(opts)
