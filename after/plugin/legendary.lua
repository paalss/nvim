local map = vim.keymap.set
local legendary = require('legendary')

legendary.setup({
  lazy_nvim = { auto_register = true },
  keymaps = {
    { "<leader>all",    "ggVG",                   description = "mark all" },
    { "<leader>ya",     "ggVGy",                  description = "yank all" },
    { "<leader>pa",     "ggVGp",                  description = "paste all" },
    { "<leader>snakam", "f_x~",                   description = "snake_case -> camelCase" },
    { "<leader>classt", "f{a`${<esc>f}i}`<esc>B", description = "{classes.___} -> {`${classes.___} `}" },
    { "<leader>classu", "f`xxxf}xxB",             description = "{`${classes.___}`} -> {classes.___}" },
  }
})

map({ "n", "v" }, '<C-l>', '<Cmd>Legendary<CR>', {})
map({ "n", "v" }, '<leader>keymaps', '<Cmd>Legendary keymaps<CR>', {})
map({ "n", "v" }, '<leader>commands', '<Cmd>Legendary commands<CR>', {})
map({ "n", "v" }, '<leader>functions', '<Cmd>Legendary functions<CR>', {})
map({ "n", "v" }, '<leader>autocmds', '<Cmd>Legendary autocmds<CR>', {})
