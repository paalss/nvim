local alpha = require 'alpha'
local dashboard = require 'alpha.themes.dashboard'
dashboard.section.header.val = {
  [[  /$$$$$$   /$$               /$$                  /$$              ]],
  [[ /$$__  $$ | $$              | $$                 |__/              ]],
  [[| $$  \__//$$$$$$    /$$$$$$ | $$   /$$ /$$    /$$ /$$ /$$$$$$/$$$$ ]],
  [[|  $$$$$$|_  $$_/   |____  $$| $$  /$$/|  $$  /$$/| $$| $$_  $$_  $$]],
  [[ \____  $$ | $$      /$$$$$$$| $$$$$$/  \  $$/$$/ | $$| $$ \ $$ \ $$]],
  [[ /$$  \ $$ | $$ /$$ /$$__  $$| $$_  $$   \  $$$/  | $$| $$ | $$ | $$]],
  [[|  $$$$$$/ |  $$$$/|  $$$$$$$| $$ \  $$   \  $/   | $$| $$ | $$ | $$]],
  [[ \______/   \___/   \_______/|__/  \__/    \_/    |__/|__/ |__/ |__/]],
}
dashboard.section.buttons.val = {
  -- dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
}
alpha.setup(dashboard.config)
