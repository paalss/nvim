local builtin = require('telescope.builtin')
require('telescope').load_extension("adjacent")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    file_ignore_patterns = { ".git/" }
  }
}


-- file search --
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Find files' })
-- vim.keymap.set('n', '<C-p>', [[<cmd>Telescope find_files hidden=true<CR>]], { desc = "Find files", noremap = true })
vim.keymap.set('n', '<A-p>', builtin.git_files, { desc = "Find git files" })
vim.keymap.set('n', '<leader>cc', "<cmd>Telescope adjacent<CR>",
  { desc = "Find adjacent files", noremap = true, silent = false })


-- text search
vim.keymap.set('n', '<leader>pø', builtin.grep_string, { desc = 'Current word search' })
vim.keymap.set('n', '<leader>pp', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Text search" })
vim.keymap.set('n', '<leader>p0', builtin.live_grep, { desc = 'Live text search' })


-- other
vim.keymap.set('n', '<C-l>', builtin.keymaps, { desc = 'Find keymaps' })
-- vim.keymap.set('n', '<C-l>', [[<cmd>Telescope keymaps hidden=true<CR>]], { desc = "Find keymaps", noremap = true })
