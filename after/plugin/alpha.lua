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
    [[CTRL I           Search keybindings]],
    [[CTRL M           Open terminal (tmux pane)]],
    [[CTRL X, M        Maximize pane]],
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
