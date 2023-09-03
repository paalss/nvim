vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")
vim.g.lazygit_use_custom_config_file_path = 1 -- 1 = enable custom file path
vim.g.lazygit_config_file_path = '~/.config/lazygit/config.yml' -- set to config file in this repo's config.yml

vim.keymap.set("n", "<leader>glo", ":LazyGitFilter<CR>")
vim.keymap.set("n", "<leader>glgp", ":LazyGitFilterCurrentFile<CR>")
