local illuminate = require('illuminate')
vim.keymap.set("n", "<leader>ill", ":IlluminateToggle<CR>", { desc = "Toggle highlight all word occurences" })


-- disse gjør nesten det samme som "SPC vas": vim.lsp.buf.references() pluss :cnext og :cprev
-- se lsp.lua
vim.keymap.set("n", "<leader>*", function() illuminate.goto_next_reference() end, { desc = "" })
vim.keymap.set("n", "<leader>#", function() illuminate.goto_prev_reference() end, { desc = "" })
