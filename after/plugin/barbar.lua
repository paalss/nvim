-- pros/cons
--
-- cons:
-- litt treg når treesitter er skrudd på
-- -- navigasjon
-- -- før file finder


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-;>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A-:>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
-- map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<leader>ha', '<Cmd>BufferPin<CR>', opts)

-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned

-- Close buffer
map('n', '<A-w>', ':echo "AAAA"<CR>', opts)
map('n', '<leader><A-w>', ':BufferClose<CR>', opts)
map('n', '<A-t>', ':BufferRestore<CR>', opts)

-- Wipeout buffer
--                 :BufferWipeout

-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- Magic buffer-picking mode
-- map('n', '<C-p>',   '<Cmd>BufferPick<CR>', opts)
-- map('n', '<C-s-p>', '<Cmd>BufferPickDelete<CR>', opts)

-- Sort automatically by...
-- map('n', '<leader><leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader><leader>bn', '<Cmd>BufferOrderByName<CR>', opts)
map('n', '<leader><leader>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<leader><leader>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<leader><leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
