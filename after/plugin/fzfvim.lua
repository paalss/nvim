-- https://github.com/junegunn/fzf?tab=readme-ov-file#vimneovim-plugin
-- https://github.com/junegunn/fzf.vim
-- https://github.com/junegunn/fzf/blob/master/README-VIM.md
-- local builtin = require('telescope.builtin')
-- local actions = require('telescope.actions')
-- local telescope = require("telescope")
vim.keymap.set("n", "<C-p>", ":FZF<CR>", { desc = "Search files" })
vim.keymap.set("n", "<leader>p0", ":RG<CR>", { desc = "Search text" })
vim.keymap.set("n", "<leader>pø", ":RG <C-r><C-w><CR>", { desc = "Search text under cursor" })
-- vim.keymap.set("n", "<leader>pa", ":Ag <C-R><C-W><CR>", { desc = "dsuifahfid" }) -- from https://github.com/junegunn/fzf.vim/issues/50
-- vim.keymap.set("n", "<C-p>", ":FZF!<CR>", { desc = "Full screen" })
-- vim.keymap.set("n", "<leader>p0", ":grep -R ", { desc = "Search files" })
-- vim.keymap.set("n", "<C-p>", ":find **/", { desc = "Find files" })
vim.keymap.set("n", "<leader>sk", ":Maps<CR>", { desc = "Normal mode keymaps" })
vim.keymap.set("n", "<leader>sh", ":Helptags<CR>", { desc = "Help tags" })
vim.keymap.set("n", "<leader>sc", ":Colors<CR>", { desc = "Color schemes" })
