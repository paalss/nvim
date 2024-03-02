local map = vim.keymap.set
local legendary = require('legendary')

legendary.setup({
  lazy_nvim = { auto_register = true },
  keymaps = {}
})

map({ "n", "v" }, '<leader>leg', '<Cmd>Legendary<CR>', {})
map({ "n", "v" }, '<leader>lek', '<Cmd>Legendary keymaps<CR>', {})
map({ "n", "v" }, '<leader>lec', '<Cmd>Legendary commands<CR>', {})
map({ "n", "v" }, '<leader>lef', '<Cmd>Legendary functions<CR>', {})
map({ "n", "v" }, '<leader>lea', '<Cmd>Legendary autocmds<CR>', {})
