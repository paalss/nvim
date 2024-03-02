local map = vim.api.nvim_set_keymap
local legendary = require('legendary')

legendary.setup({
  lazy_nvim = { auto_register = true },
  keymaps = {}
})

map('x', '<leader>leg', '<Cmd>Legendary<CR>', {})
map('x', '<leader>lek', '<Cmd>Legendary keymaps<CR>', {})
map('x', '<leader>lec', '<Cmd>Legendary commands<CR>', {})
map('x', '<leader>lef', '<Cmd>Legendary functions<CR>', {})
map('x', '<leader>lea', '<Cmd>Legendary autocmds<CR>', {})
