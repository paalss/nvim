require("neo-tree").setup({
  close_if_last_window = true
})
vim.keymap.set("n", "<A-r>", "<cmd>Neotree toggle reveal<cr>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader><A-r>", "<cmd>Neotree toggle reveal float<cr>", { desc = "Toggle file explorer (float)" })
vim.keymap.set("n", "<leader>e3", "<cmd>Neotree close<cr>", { desc = "Close Neotree" })
vim.keymap.set("n", "<leader>gss", "<cmd>Neotree git_status<cr>", { desc = "Show uncommited changes" })
