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
    [[]],
    [[                    Neovim 0.9.0 config for WSL]]
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
    [[––––––––––––––––– Tmux Panes ––––––––––––––––––––]],
    [[CTRL b, m        Maximize pane]],
    [[CTRL b, hjkl     Resize pane]],
    [[CTRL hjkl        move to pane]],
    [[]],
    [[–––––––––––––––––––– Git ––––––––––––––––––––]],
    [[SPC gg           Open Diffview]],
    [[SPC lg           Open Lazygit]],
    [[SPC gt           Open Fugitive]],
    [[]],
    [[–––––––––––––––––––– Other ––––––––––––––––––––]],
    [[SPC te           Open terminal]],
    [[SPC y*           Yank to OS system registry]],
    [[SPC vv           Open Neovim explorer]],
    [[SPC hh           Open lazy.nvim]],
    [[SPC tt           Open trouble.nvim]],
    [[SPC sn           Search Neovim config files]],
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
