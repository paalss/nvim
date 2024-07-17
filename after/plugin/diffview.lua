vim.keymap.set("n", "<leader>glo", ":DiffviewFileHistory<CR>", { desc = "Show git history" })
-- vim.keymap.set("n", "<leader>glgp", ":DiffviewFileHistory %<CR>")

vim.keymap.set("n", "<leader>gg", ":DiffviewOpen<CR>", { desc = "Open git status (compate current index)" })
vim.keymap.set("n", "<leader>gh", ":DiffviewFocusFiles<CR><C-w>l:DiffviewClose<CR>", { desc = "Close Diffview" })
