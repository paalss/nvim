local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- gt and gT

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = "Previous buffer/tab", noremap = true, silent = true })
map('n', '<A-.>', '<Cmd>BufferNext<CR>', { desc = "Next buffer/tab", noremap = true, silent = true })
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', { desc = "Move buffer left", noremap = true, silent = true })
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', { desc = "Move buffer right", noremap = true, silent = true })
--
-- Goto buffer in position...
-- At the moment A-2 and A-4 are used for printing @ and $ (Autohotkey)
-- map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
-- map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
-- map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
-- map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
-- map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
-- map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
-- map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
-- map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
-- map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
-- map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<leader>pin', '<Cmd>BufferPin<CR>', { desc = "Pin buffer", noremap = true, silent = true })
-- Close buffer. Same as running: :bd
map('n', '<A-c>', '<Cmd>BufferClose<CR>', { desc = "Close buffer", noremap = true, silent = true })
-- Restore buffer
map('n', '<A-t>', '<Cmd>BufferRestore<CR>', { desc = "Restore buffer", noremap = true, silent = true })
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
--
