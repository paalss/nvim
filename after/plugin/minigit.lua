require('mini.git').setup()

vim.keymap.set("n", "<leader>g%", ":Git add %<CR>", {desc ="Add file"})
vim.keymap.set("n", "<leader>ga", ":Git add -A<CR>", {desc ="Add all"})
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>", {desc ="Commit"})
