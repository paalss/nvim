local map = vim.api.nvim_set_keymap
local legendary = require('legendary')

legendary.setup({
  lazy_nvim = { auto_register = true },
  keymaps = {}
})

map('n', '<leader>leg', '<Cmd>Legendary<CR>', {})
map('n', '<leader>lek', '<Cmd>Legendary keymaps<CR>', {})
map('n', '<leader>lec', '<Cmd>Legendary commands<CR>', {})
map('n', '<leader>lef', '<Cmd>Legendary functions<CR>', {})
map('n', '<leader>lea', '<Cmd>Legendary autocmds<CR>', {})
