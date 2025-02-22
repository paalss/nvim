require("neo-tree").setup({
  close_if_last_window = true,
  window = {
    mappings = {
      ["l"] = "open"
    }
  }
})
vim.keymap.set("n", "<A-r><A-r>", "<cmd>Neotree toggle reveal<cr>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<A-r>h", "<cmd>Neotree toggle reveal left<cr>", { desc = "Toggle file explorer (left sidebar)" })
vim.keymap.set("n", "<A-r>k", "<cmd>Neotree toggle reveal float<cr>", { desc = "Toggle file explorer (float)" })
vim.keymap.set("n", "<A-r>l", "<cmd>Neotree toggle reveal current<cr>", { desc = "Toggle file explorer (current)" })
vim.keymap.set("n", "<A-r>c", "<cmd>Neotree close<cr>", { desc = "Close Neotree" })
vim.keymap.set("n", "<A-r>g", "<cmd>Neotree git_status<cr>", { desc = "Show uncommited changes" })
