local alpha = require 'alpha'
-- local dashboard = require 'alpha.themes.dashboard'

-- local head = {
--   type = "text",
--   val = {
--     [[  /$$$$$$   /$$               /$$                  /$$              ]],
--     [[ /$$__  $$ | $$              | $$                 |__/              ]],
--     [[| $$  \__//$$$$$$    /$$$$$$ | $$   /$$ /$$    /$$ /$$ /$$$$$$/$$$$ ]],
--     [[|  $$$$$$|_  $$_/   |____  $$| $$  /$$/|  $$  /$$/| $$| $$_  $$_  $$]],
--     [[ \____  $$ | $$      /$$$$$$$| $$$$$$/  \  $$/$$/ | $$| $$ \ $$ \ $$]],
--     [[ /$$  \ $$ | $$ /$$ /$$__  $$| $$_  $$   \  $$$/  | $$| $$ | $$ | $$]],
--     [[|  $$$$$$/ |  $$$$/|  $$$$$$$| $$ \  $$   \  $/   | $$| $$ | $$ | $$]],
--     [[ \______/   \___/   \_______/|__/  \__/    \_/    |__/|__/ |__/ |__/]],
--     [[]],
--     [[                    Neovim 0.11.4 config for OSX]]
--   },
--   opts = {
--     position = "center",
--     hl = "Type",
--   },
-- }

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
    [[SPC SPC me       Open main menu]],
    [[SPC sh           Search Help]],
    [[]],
    [[]],
    [[––––––––––––––– File navigation –––––––––––––––––]],
    [[SPC sf           Search files]],
    [[SPC st           Search text live]],
    [[SPC rr           Open file tree (Neotree)]],
    [[SPC adj          Search adjacent files]],
    [[gf               Go to file]],
    [[]],
    [[]],
    [[––––––––––––––––––– Tmux  ––––––––––––––––––––––]],
    [[ALT+z m         Maximize pane]],
    [[ALT+z hjkl      Resize pane]],
    [[CTRL hjkl       move to pane]],
    [[]],
    [[]],
    [[–––––––––––––––––– Git TUI ––––––––––––––––––––]],
    [[SPC ds           Open status diff]],
    [[]],
    [[]],
    [[]],
    [[–––––––––––––– Commit history ––––––––––––––]],
    [[SPC dl          Open git log diffs]],
    [[]],
    [[]],
    [[–––––––––––––––––––– Other ––––––––––––––––––––]],
    [[-                Replay 'w' macro]],
    [[< h/l            Go to next/previous error]],
    [[SPC v            Use OS system registry for your next command]],
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
    -- { type = "padding", val = 2 },
    -- head,
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
