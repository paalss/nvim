local map = vim.api.nvim_set_keymap

require('legendary').setup({
  lazy_nvim = { auto_register = true },
  keymaps = {}
})

map('n', '<leader>leg', '<Cmd>Legendary<CR>', {})
