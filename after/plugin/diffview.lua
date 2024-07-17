-- Git status and close
vim.keymap.set("n", "<leader>gg", ":DiffviewOpen<CR>", { desc = "Open git status (compate current index)" })
vim.keymap.set("n", "<leader>gh", ":DiffviewFocusFiles<CR><C-w>l:DiffviewClose<CR>", { desc = "Close Diffview" })

-- Git log
vim.keymap.set("n", "<leader>glo", ":DiffviewFileHistory<CR>", { desc = "Show git history" })
vim.keymap.set("n", "<leader>glgp", ":DiffviewFileHistory %<CR>", { desc = "Show git history for current file" })

-- Compare working index with branch
vim.keymap.set("n", "<leader>gy", ":DiffviewOpen origin/master<CR>", { desc = "Compare with master" })
vim.keymap.set("n", "<leader>gr", ":DiffviewOpen origin/main<CR>", { desc = "Compare with main" })
