-- pros/cons
--
-- cons:
-- litt treg når treesitter er skrudd på
-- -- navigasjon
-- -- før file finder


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '‚', '<Cmd>BufferPrevious<CR>', opts)
map('n', '…', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '„', '<Cmd>BufferMovePrevious<CR>', opts) -- <S-A-,>
map('n', '·', '<Cmd>BufferMoveNext<CR>', opts) -- <S-A-.>

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
map('n', 'Ω', ':BufferClose<CR>', opts) -- <A-w>
map('n', '†', ':BufferRestore<CR>', opts) -- <A-t>

-- Wipeout buffer
--                 :BufferWipeout

-- Close commands
map('n', '<leader>Ω', ':BufferCloseAllButCurrent<CR>', opts) -- <leader><A-w>
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
