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
    [[CTRL i/TAB       Search keymaps]],
    [[Alt s            Open menu]],
    [[SPC sh           Search Help]],
    [[]],
    [[]],
    [[––––––––––––––– File navigation –––––––––––––––––]],
    [[SPC vv           Open Neovim explorer]],
    [[CTRL p           Search files]],
    [[Alt r            Open file tree (Neotree)]],
    [[Alt e            Open marked files (Harpoon)]],
    [[SPC adj          Search adjacent files]],
    [[SPC p0           Search text live]],
    [[SPC pp           Search text]],
    [[]],
    [[]],
    [[–––––––––––– Neovim file navigation ––––––––––––––]],
    [[\CTRL p          Search Neovim config files]],
    [[\SPC p0          Search Neovim config text live]],
    [[]],
    [[]],
    [[––––––––––––––––––– Tmux  ––––––––––––––––––––––]],
    [[ALT z, m         Maximize pane]],
    [[ALT z, hjkl      Resize pane]],
    [[CTRL hjkl        move to pane]],
    [[]],
    [[]],
    [[–––––––––––––––––––– Git ––––––––––––––––––––]],
    [[SPC dd           Open Diffview]],
    [[SPC gg           Open Lazygit]],
    [[SPC gt           Open Fugitive]],
    [[]],
    [[]],
    [[–––––––––––––– Commit history ––––––––––––––]],
    [[SPC dlo          Diffview]],
    [[SPC glo          Telescope]],
    [[\ glo            Fugitive]],
    [[]],
    [[]],
    [[–––––––––––––––– Branches ––––––––––––––––]],
    [[SPC gb           Telescope]],
    [[\ gb             Fugitive]],
    [[]],
    [[]],
    [[–––––––––––––––––––– Other ––––––––––––––––––––]],
    [[SPC bb           Center buffer (NonNeckPain)]],
    [[SPC te           Open terminal]],
    [[SPC y*           Yank to OS system registry]],
    [[SPC hh           Open lazy.nvim]],
    [[SPC tt           Open trouble.nvim]],
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
--     "                    Neovim 0.9.0 config for WSL"
--   }
