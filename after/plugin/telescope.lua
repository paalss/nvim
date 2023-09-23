local builtin = require('telescope.builtin')
require('telescope').load_extension("adjacent")
vim.keymap.set('n', '<leader>cc', "<cmd>Telescope adjacent<CR>", { noremap = true, silent = false })

vim.keymap.set('n', '<C-p>', builtin.find_files, {})

vim.keymap.set('n', '<A-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})

vim.keymap.set('n', '<leader>pp', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
