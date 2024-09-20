require('no-neck-pain').setup({
  width = 145
})

vim.keymap.set("n", "<leader>bb", ":NoNeckPain<CR>", { desc = "Center current buffer (noneckpain)" })
vim.keymap.set("n", "<leader>bg", ":NoNeckPainResize 145<CR>", { desc = "Noneckpain: Default width" })
vim.keymap.set("n", "<leader>bl", ":NoNeckPainToggleRightSide<CR>", { desc = "Noneckpain: Toggle right buffer" })
vim.keymap.set("n", "<A-Up>", ":NoNeckPainWidthUp<CR>", { desc = "Noneckpain: Increase width" })
vim.keymap.set("n", "<A-Down>", ":NoNeckPainWidthDown<CR>", { desc = "Noneckpain: Decrease width" })
