vim.keymap.set("n", "<leader>gt", ":Git<CR>", { desc = "Open Git – Fugitive" }) -- TODO: disable if it's unnecessary
vim.keymap.set("n", "<leader>gf", ":Gwrite<CR>", { desc = "Write and stage buffer" }) -- TODO: disable if superseded by gitsign's stage_buffer
vim.keymap.set("n", "<leader>ga", ":wa<CR>:G add -A<CR>", { desc = "Stage/add all files to git" })
vim.keymap.set("n", "<leader>gc", ":G commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>g5", ":Gdiffsplit<CR>", { desc = "Open git status (Fugitive)" }) -- TODO: disable if superseded by diffview
