require('mini.pick').setup()

vim.keymap.set("n", "<C-p>", ":Pick files<CR>", { desc = "Find files" })
