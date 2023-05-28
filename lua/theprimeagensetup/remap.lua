-- definere leader som space-knappe
vim.g.mapleader = " "
-- returnere til nvim file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- space pv

vim.keymap.set("n", "<A-k>", ":m-2<CR>") -- Alt k --> move line down
vim.keymap.set("n", "<A-j>", ":m+<CR>") -- Alt j --> mode line up
vim.keymap.set("i", "<A-j>", "<Esc>:m+<CR>")
vim.keymap.set("i", "<A-k>", "<Esc>:m-2<CR>")


vim.keymap.set("i", "<A-p>", "{}<Esc>i")
vim.keymap.set("i", "<A-å>", "}")
vim.keymap.set("i", "<A-ø>", "[]<Esc>i")
vim.keymap.set("i", "<A-æ>", "]")
