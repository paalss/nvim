-- definere leader som space-knappen
vim.g.mapleader = " "
-- når i normal mode "n", trykk leader-knappen for å kjøre command :Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Da kan du, i stedet for å kjøre `:Ex` for å dra til nvim file exploreren, trykke [space] p v. (raskt!)
