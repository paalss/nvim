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

map({ "n", "v" }, '<leader>leg', '<Cmd>Legendary<CR>', {})
map({ "n", "v" }, '<leader>lek', '<Cmd>Legendary keymaps<CR>', {})
map({ "n", "v" }, '<leader>lec', '<Cmd>Legendary commands<CR>', {})
map({ "n", "v" }, '<leader>lef', '<Cmd>Legendary functions<CR>', {})
map({ "n", "v" }, '<leader>lea', '<Cmd>Legendary autocmds<CR>', {})
