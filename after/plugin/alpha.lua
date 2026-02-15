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
    [[                    Neovim 0.11.6 config for WSL]]
  },
  opts = {
    position = "center",
    hl = "Type",
  },
}

-- Predefined colors: String, Keyword, Number, Type? Identifier?
-- eg: opts.hl = "String"

vim.keymap.set("n", "<leader>aa", function()
  -- vim.cmd('so "%"')
  vim.cmd('Alpha')
end
, { desc = "Open and refresh intro splash screen" })


local block1 = {
  type = "text",
  val = {
    [[––––––––––––––––––– Help ––––––––––––––––––––––––]],
    [[SPC sk           Search keymaps]],
    [[Alt s            Main menu]],
    [[SPC sh           Search Help]],
    [[]],
    [[]],
    [[––––––––––––––– File navigation –––––––––––––––––]],
    [[CTRL p           Search files]],
    [[SPC p0           Search text live]],
    [[SPC pp           Search text]],
    [[SPC rr           Open file tree (Neotree)]],
    [[SPC hh           Open marked files (Harpoon)]],
    [[SPC adj          Search adjacent files]],
    [[gf               Go to file]],
    [[]],
    [[]],
    [[––––––––––––--- Neovim files ––––––––––––––]],
    [[\CTRL p          Search Neovim config files]],
    [[\ p0             Search Neovim config text live]],
    [[]],
    [[]],
    [[––––––––––––––––––– Tmux  ––––––––––––––––––––––]],
    [[ALT+z m         Maximize pane]],
    [[ALT+z hjkl      Resize pane]],
    [[CTRL hjkl        move to pane]],
    [[]],
    [[]],
    [[–––––––––––––––––– Git TUI ––––––––––––––––––––]],
    [[SPC dd           Open Diffview]],
    [[]],
    [[]],
    [[]],
    [[–––––––––––––– Commit history ––––––––––––––]],
    [[SPC dlo          Diffview]],
    [[SPC glo          Telescope]],
    [[]],
    [[]],
    [[–––––––––––––––– Branches ––––––––––––––––]],
    [[SPC gb           Telescope]],
    [[]],
    [[]],
    [[–––––––––––––––––––– Other ––––––––––––––––––––]],
    [[|                Replay 'w' macro]],
    [[< h/l            Go to next/previous error]],
    [[SPC y*           Yank to OS system registry]],
    [[CTRL s*          Use "s" registry]],
    [[]],
    [[]],
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


-- {
--     "  /$$$$$$   /$$               /$$                  /$$              ",
--     " /$$__  $$ | $$              | $$                 |__/              ",
--     "| $$  \\__//$$$$$$    /$$$$$$ | $$   /$$ /$$    /$$ /$$ /$$$$$$/$$$$ ",
--     "|  $$$$$$|_  $$_/   |____  $$| $$  /$$/|  $$  /$$/| $$| $$_  $$_  $$",
--     " \\____  $$ | $$      /$$$$$$$| $$$$$$/  \\  $$/$$/ | $$| $$ \\ $$ \\ $$",
--     " /$$  \\ $$ | $$ /$$ /$$__  $$| $$_  $$   \\  $$$/  | $$| $$ | $$ | $$",
--     "|  $$$$$$/ |  $$$$/|  $$$$$$$| $$ \\  $$   \\  $/   | $$| $$ | $$ | $$",
--     " \\______/   \\___/   \\_______/|__/  \\__/    \\_/    |__/|__/ |__/ |__/",
--     "",
--     "                    Neovim 0.11.6 config for WSL"
--   }
