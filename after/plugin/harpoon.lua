local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({
  global_settings = {
    tabline = true,
  }
})
-- REQUIRED

require('harpoon-tabline').setup()

-- vim.keymap.set("n", "<leader><leader>hd", function ()
--  ui.toggle_quick_menu()
--  vim.cmd(":%d")
-- end, { desc = "Delete all Harpoon marks"})

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Add to Harpoon" })
vim.keymap.set("n", "<A-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "View Harpoon" })

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Open Harpoon file #1" })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Open Harpoon file #2" })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Open Harpoon file #3" })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Open Harpoon file #4" })
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Open Harpoon file #5" })
vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end, { desc = "Open Harpoon file #6" })
vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end, { desc = "Open Harpoon file #7" })
vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end, { desc = "Open Harpoon file #8" })
vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end, { desc = "Open Harpoon file #9" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<A-,>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<A-.>", function() harpoon:list():next() end)
