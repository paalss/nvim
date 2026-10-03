require('mini.ai').setup()

vim.keymap.set("o", "ic", "iq", { remap = true, desc = "Inside \"" })
vim.keymap.set("o", "ac", "aq", { remap = true, desc = "Around \"" })
vim.keymap.set("v", "ic", "iq", { remap = true, desc = "Inside \"" })
vim.keymap.set("v", "ac", "aq", { remap = true, desc = "Around \"" })

