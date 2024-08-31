vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>", { desc = "Open Lazygit" })
vim.g.lazygit_use_custom_config_file_path = 1                   -- 1 = enable custom file path
vim.g.lazygit_config_file_path = '~/.config/lazygit/config.yml' -- where config file is storend config file

vim.keymap.set("n", "<leader>lgl", ":LazyGitFilter<CR>", { desc = "Open Lazygit commit history" })
vim.keymap.set("n", "<leader>lgp", ":LazyGitFilterCurrentFile<CR>", { desc = "Open Lazygit for current file" })
