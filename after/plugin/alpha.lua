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
    [[–––––––––––––––––––– Search ––––––––––––––––––––]],
    [[CTRL i/TAB       Search keymaps]],
    [[CTRL p           Search files]],
    [[SPC adj          Search adjacent files]],
    [[SPC p0           Search text live]],
    [[SPC pp           Search text]],
    [[]],
    [[–––––––––––––––––––– Panes ––––––––––––––––––––]],
    [[CTRL x, m        Maximize pane]],
    [[CTRL x, hjkl     Resize pane]],
    [[CTRL hjkl        move to pane]],
    [[]],
    [[–––––––––––––––––––– Other ––––––––––––––––––––]],
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
    { type = "padding", val = 2 },
  }
}
alpha.setup(opts)
