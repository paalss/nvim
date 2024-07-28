-- vim.keymap.set("n", "<C-m>", "<cmd>:silent !tmux split-window -v<CR>", { desc = "TMUX: 'Open terminal': new horizontal tmux pane" })
vim.keymap.set("n", "<leader><leader>tmux", ":! cp ~/.config/nvim/.tmux.conf ~/.tmux.conf")
