vim.keymap.set("n", "<leader>gt", ":Git<CR>", { desc = "Open Git – Fugitive" }) -- TODO: disable if it's unnecessary
vim.keymap.set("n", "<leader>gf", ":Gwrite<CR>", { desc = "Save and stage/add buffer-file to git" })
vim.keymap.set("n", "<leader>ga", ":wa<CR>:G add -A<CR>", { desc = "Stage/add all files to git" })
vim.keymap.set("n", "<leader>gc", ":G commit<CR>", { desc = "Git commit" })
