-- definere leader som space-knappe
vim.g.mapleader = " "
-- når i normal mode "n", trykk eg. [space] pv for å kjøre command :Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<A-k>", ":m-2<CR>") -- Alt k --> move line down
vim.keymap.set("n", "<A-j>", ":m+<CR>") -- Alt j --> mode line up
vim.keymap.set("i", "<A-j>", "<Esc>:m+<CR>")
vim.keymap.set("i", "<A-k>", "<Esc>:m-2<CR>")
-- Da kan du, i stedet for å kjøre `:Ex` for å dra til nvim file exploreren, trykke [space] p v. (raskt!)

