-- https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua
local builtin = require('telescope.builtin')
-- local actions = require('telescope.actions')
require('telescope').load_extension("adjacent")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    file_ignore_patterns = { ".git/" }
  }
}

-- vim.keymap.set('n', '<leader>sq', function(...)
--   actions.send_to_qflist(...)
--   actions.open_qflist(...)
-- end, { desc = "Send to quickfix list" })


-- file search --
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader><C-p>', [[<cmd>Telescope find_files hidden=true<CR>]],
  { desc = "Find hidden files", noremap = true })
vim.keymap.set('n', '<A-p>', builtin.git_files, { desc = "Find git files" })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Search open buffers' })
vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = 'Search Recent Files ("." for repeat)' })

-- text search
vim.keymap.set('n', '<leader>pø', builtin.grep_string, { desc = 'Current word search' })
vim.keymap.set('n', '<leader>pp', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Text search" })
vim.keymap.set('n', '<leader>p0', builtin.live_grep, { desc = 'Live text search' })

vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search help tags' })
vim.keymap.set('n', '<leader>sc', builtin.colorscheme, { desc = 'Search and set colorscheme' })
vim.keymap.set('n', '<leader>se', builtin.registers, { desc = 'Search paste registers registry clipboard' })
vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = 'Search telescope functionality' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search diagnostics' })
vim.keymap.set('n', '<leader>adj', "<cmd>Telescope adjacent<CR>",
  { desc = "Find adjacent files", noremap = true, silent = false })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = 'Continue last search' })



-- current file text search previewed in buffer
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '/ Search results in telescope window' })


-- other
vim.keymap.set('n', '<C-i>', builtin.keymaps, { desc = 'Find keymaps' })
vim.keymap.set('n', '<leader>key', builtin.keymaps, { desc = 'Find keymaps' })
-- vim.keymap.set('n', '<C-l>', [[<cmd>Telescope keymaps hidden=true<CR>]], { desc = "Find keymaps", noremap = true })


-- search neovim ~/.config
vim.keymap.set('n', '<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Search Neovim ~/.config files' })
