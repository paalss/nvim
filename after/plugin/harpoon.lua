require("harpoon").setup({
  tabline = true,
})
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "Add to Harpoon" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "View Harpoon" })

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = "Open Harpoon file #1" })
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = "Open Harpoon file #2" })
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = "Open Harpoon file #3" })
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = "Open Harpoon file #4" })
vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end, { desc = "Open Harpoon file #5" })
vim.keymap.set("n", "<leader>6", function() ui.nav_file(6) end, { desc = "Open Harpoon file #6" })
vim.keymap.set("n", "<leader>7", function() ui.nav_file(7) end, { desc = "Open Harpoon file #7" })
vim.keymap.set("n", "<leader>8", function() ui.nav_file(8) end, { desc = "Open Harpoon file #8" })
vim.keymap.set("n", "<leader>9", function() ui.nav_file(9) end, { desc = "Open Harpoon file #9" })

vim.keymap.set("n", "<A-,>", function() ui.nav_prev() end, { desc = "Go to next Harpoon file" })
vim.keymap.set("n", "<A-.>", function() ui.nav_next() end, { desc = "Go to prev Harpoon file" })

vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
-- vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
