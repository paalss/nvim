-- https://github.com/junegunn/fzf?tab=readme-ov-file#vimneovim-plugin
-- https://github.com/junegunn/fzf.vim
-- https://github.com/junegunn/fzf/blob/master/README-VIM.md
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local telescope = require("telescope")
vim.keymap.set("n", "<C-p>", ":FZF<CR>", { desc = "Search files" })
vim.keymap.set("n", "<leader>p0", ":RG<CR>", { desc = "Search text" })
-- vim.keymap.set("n", "<C-p>", ":FZF!<CR>", { desc = "Full screen" })
-- vim.keymap.set("n", "<leader>p0", ":grep -R ", { desc = "Search files" })
-- vim.keymap.set("n", "<C-p>", ":find **/", { desc = "Find files" })
