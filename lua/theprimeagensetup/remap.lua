-- definere leader som space-knappe
vim.g.mapleader = " "
-- når i normal mode "n", trykk leader-knappen for å kjøre command :Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<S-k>", ":m-2<CR>") -- Shift k --> move line down
vim.keymap.set("n", "<S-j>", ":m+<CR>") -- Shift j --> mode line up
vim.keymap.set("i", "<S-j>", "<Esc>:m+<CR>")
vim.keymap.set("i", "<S-k>", "<Esc>:m-2<CR>")
-- Da kan du, i stedet for å kjøre `:Ex` for å dra til nvim file exploreren, trykke [space] p v. (raskt!)

-- forsøk på remapping av knapper
-- vim.keymap.set("i", "<sc-8>", "{", {noremap = true})
-- vim.keymap.set("n", "<sc-8"", [[<cmd>lua print('ctrl+shift+8')<cr>]], {noremap = true})
-- vim.api.nvim_set_keymap("<c-8>", "<s-y>", {noremap=true}) 

