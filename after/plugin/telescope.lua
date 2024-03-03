local builtin = require('telescope.builtin')
require('telescope').load_extension("adjacent")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    file_ignore_patterns = { ".git/" }
  }
}
vim.keymap.set('n', '<leader>cc', "<cmd>Telescope adjacent<CR>", { desc="Find adjacent files", noremap = true, silent = false })

vim.keymap.set('n', '<C-p>', [[<cmd>Telescope find_files hidden=true<CR>]], { desc="Find files", noremap = true })
vim.keymap.set('n', '<C-l>', [[<cmd>Telescope keymaps hidden=true<CR>]], { desc="Find keymaps", noremap = true })

vim.keymap.set('n', '<A-p>', builtin.git_files, { desc = "Find git files"})

vim.keymap.set('n', '<leader>pp', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {desc="Find text"})
