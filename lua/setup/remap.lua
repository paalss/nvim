-- shortcuts/typing

-- https://neovim.io/doc/user/options.html#%27langmap%27
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-2>", "@", { desc = "At" })
vim.keymap.set({ "i", "v", "x", "o", "t", "!" }, "<A-3>", "~", { desc = "Tilde" })
vim.keymap.set({ "n" }, "<A-3>", "~", { desc = "Tilde" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-4>", "$", { desc = "Dollar sign" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-5>", "%", { desc = "Percent" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-|>", "`", { desc = "Bactick" })

-- vim.keymap.set({ "n", "v", "x" }, "ø", ":", { desc = "Colon" })
-- vim.keymap.set({ "n", "v", "x" }, "åå", "[[", { desc = "Double opening square brackets" })
-- vim.keymap.set({ "n", "v", "x" }, "¨¨¨¨", "]]", { desc = "Double closing square brackets" })
vim.keymap.set({ "n", "v", "x" }, "Å", "{", { desc = "Opening curly bracket / move to previous paragraph" })
vim.keymap.set({ "n", "v", "x" }, "Æ", "}", { desc = "Closing curly bracket / move to next paragraph" })


--------------------------------------------------------
-- LINE MANAGEMENT
--------------------------------------------------------


-- MOVE LINE

vim.keymap.set("n", "<A-k>", ":m-2<CR>", { desc = "Move line up" })
vim.keymap.set("n", "<A-j>", ":m+<CR>", { desc = "Move line down" })


-- MOVE LINES

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line(s) down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line(s) up" })


-- ADD NEW/DELETE LINE

-- vim.keymap.set("n", "<leader>cd", "cc<esc>", { desc = "delete line" })
vim.keymap.set("n", "<leader>o", "o<esc>", { desc = "add new line below" })
vim.keymap.set("n", "<leader>O", "O<esc>", { desc = "add new line above" })


--------------------------------------------------------
-- MARKDOWN TEMPLATE CODE BLOCK
--------------------------------------------------------

-- vim.keymap.set("n", "<leader>tg", "i```<CR>```<esc>kA", { desc = "Add code block in markdown" })
-- vim.keymap.set("n", "<leader>tbg", "i```bash<CR>```<esc>O", { desc = "Add bash code block in markdown" })
-- vim.keymap.set("n", "<leader>txg", "i```tsx<CR>```<esc>O", { desc = "Add tsx code block in markdown" })


--------------------------------------------------------
-- BASIC ACTIONS
--------------------------------------------------------

vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Write/save" })
vim.keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Write all files" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>x", ":x<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>so", ":so<CR>", { desc = "Source file" })


--------------------------------------------------------
-- YANKING, DELETING & PASTING
--------------------------------------------------------

-- NAVIGATE YANKED REGION

vim.keymap.set("v", "y", "ygv<esc>", { desc = "Yank (keep cursor in place)" })
vim.keymap.set("n", "å", "'[", { desc = "Go to start of yanked selection" })
vim.keymap.set("n", "æ", "']", { desc = "Go to end of yanked selection" })

vim.keymap.set("n", "<leader>sep", ":set paste<CR>", { desc = "Set paste" })
-- vim.keymap.set("n", "<leader>sto", ":set paste!<CR>", { desc = "Set toggle paste" })
vim.keymap.set("n", "<leader>sen", ":set nopaste<CR>", { desc = "Set nopaste" })
vim.keymap.set("n", "<leader>po", ":set paste<CR>\"+p<esc>:set nopaste<CR>",
  { desc = "Paste from OS registry (\"+p is slow)" })


-- REGISTERS

-- -- unnamed plus / OS registry
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "Yank to OS registry (y)" })
vim.keymap.set({ "n", "v" }, "<leader>Y", "\"+Y", { desc = "Yank to OS registry (Y)" })
-- vim.keymap.set("n", "<C-i>p", "\"+p", { desc = "Paste from OS registry" })

-- -- s
vim.keymap.set({ "n", "v" }, "<C-s>", "\"s", { desc = "Use 's' register" })

-- -- black hole
vim.keymap.set({ "n", "v" }, "_", "\"_", { desc = "Use black hole register" })


-- AFFECTED AREA

-- -- all text
vim.keymap.set("n", "<A-v>", "ggVG", { desc = "Mark all" })
vim.keymap.set("n", "<A-c>", "ggVGc", { desc = "Change all" })
vim.keymap.set("n", "<A-y>", ":%y<CR>", { desc = "Yank all" })
vim.keymap.set("n", "<leader><A-y>", ":%y+<CR>", { desc = "yank all to OS registry" })
vim.keymap.set("n", "<A-d>", ":%d<CR>", { desc = "delete all" })
vim.keymap.set("n", "<leader><A-d>", ":%d+<CR>", { desc = "delete all to OS registry" })
vim.keymap.set("n", "<leader>pal", "ggVGp", { desc = "paste all" })

-- -- line
vim.keymap.set("n", "<leader>yl", "mo^y$`o", { desc = "Yank line" })
vim.keymap.set("n", "<leader>dl", "^d$", { desc = "Delete line" })

-- --  surroundings
vim.keymap.set("n", "<leader>ds", "$mo%dd`odd", { desc = "Delete surroundings" })


--------------------------------------------------------
-- CASING
--------------------------------------------------------

-- vim.keymap.set("n", "<leader>snakam", "f_x~", { desc = "snake_case -> camelCase" })
vim.keymap.set("n", "<leader>ciW", "g~iW", { desc = "Toggle case for Word (uppercase)" })
vim.keymap.set("n", "<leader>ciw", "g~iw", { desc = "Toggle case for word" })
vim.keymap.set("n", "<leader>ci\'", "g~i\'", { desc = "Toggle case inside single quotes" })
vim.keymap.set("n", "<leader>ci\"", "g~i\"", { desc = "Toggle case inside double quotes" })
vim.keymap.set("n", "<leader>cil", "V~", { desc = "Toggle case for line" })


--------------------------------------------------------
-- CORRECT NORWEGIAN CHARACTERS
--------------------------------------------------------

vim.keymap.set("n", "<leader>corr", ":%s/├Ñ/å/g<CR>:%s/├╕/ø/g<CR>:%s/├ª/æ/g<CR>", { desc = "Correct æøå" })
vim.keymap.set("n", "<leader>cæ", ":%s/├ª/æ/g<CR>", { desc = "Correct æ" })
vim.keymap.set("n", "<leader>cø", ":%s/├╕/ø/g<CR>", { desc = "Correct ø" })
vim.keymap.set("n", "<leader>cå", ":%s/├Ñ/å/g<CR>", { desc = "Correct å" })


--------------------------------------------------------
-- SNIPPETS
--------------------------------------------------------

-- vim.keymap.set("n", "<leader>colu", ":read ~/.config/nvim/snippets/columns.html<CR>", { desc = " Add HTML columns" })


--------------------------------------------------------
-- FORMATTING
--------------------------------------------------------

-- vim.keymap.set("n", "<leader><leader>prett", ":! npx prettier . --write", { desc = "Format with prettier" })

vim.keymap.set("n", "<leader>fo", function()
  vim.lsp.buf.format()
end, { desc = "lsp format" })

-- -- -- -- For React files (JavaScript and TypeScript)
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
--   callback = function()
--     -- vim.api.nvim_buf_set_keymap(0, "n", "<leader>f", ":Neoformat<CR>",
--     -- { desc = "Format with Neoformat", noremap = true, silent = true })
--     vim.api.nvim_buf_set_keymap(0, "n", "<leader>start", ":!npm start<CR>", { noremap = true, silent = true })
--     vim.api.nvim_buf_set_keymap(0, "n", "<leader>dev", ":!npm dev<CR>", { noremap = true, silent = true })
--   end,
-- })


--------------------------------------------------------
-- QUICKFIX LIST
--------------------------------------------------------

vim.keymap.set("n", "<leader>cop", ":botright copen<CR>", { desc = "Open quickfix list" }) --botright: open at the bottom even if noneckpain is on
vim.keymap.set("n", "<leader>clo", ":ccl<CR>", { desc = "close quickfix list" })


-- QUICK FIX LIST NAVIGATION

vim.keymap.set("n", "<A-a>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<A-q>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- -- indenting
vim.keymap.set("v", ">", ">gv", { desc = "add indent" })
vim.keymap.set("v", "<", "<gv", { desc = "remove indent" })


--------------------------------------------------------
-- GIT
--------------------------------------------------------

vim.keymap.set("n", "<leader>dca", "gg/#<CR>kdgg:q!<CR>",
  { desc = "Abort git commit (does not work with amended commits, they will still commit for some reason)" })
vim.keymap.set("n", "<leader><leader>dca", "gg/#<CR>Vggy:cq<CR>",
  { desc = "Abort everything (amend commits, merge commits etc.)" })
-- TODO keymap for loading in preious deleted commit message?


--------------------------------------------------------
-- NAVIGATION
--------------------------------------------------------

-- CODE NAVIGATION

vim.keymap.set("n", "<C-d>", "23j", { desc = "Scroll page down" }) -- keep cursor in the middle
vim.keymap.set("n", "<C-u>", "23k", { desc = "Scroll page up" })

vim.keymap.set("n", "<C-e>", "<C-e><C-e>", { desc = "Scroll down" }) -- scroll 2 lines
vim.keymap.set("n", "<C-y>", "<C-y><C-y>", { desc = "Scroll up" })


-- GIT NAVIGATION

-- see gitsigns.lua


-- FILE NAVIGATION

-- vim.keymap.set("n", "<leader>vv", vim.cmd.Ex)

 
--------------------------------------------------------
-- SPLIT MANAGEMENT
--------------------------------------------------------

-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize -4<CR>", { desc = "Resize split up" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +4<CR>", { desc = "Resize split down" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -4<CR>", { desc = "Resize split left" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +4<CR>", { desc = "Resize split right" })

vim.keymap.set("n", "<A-w>", "<C-w>w", { desc = "Go to next split" })

-- add colorcolumn only for commit messages
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "COMMIT_EDITMSG",
  callback = function()
    vim.schedule(function()
      vim.opt_local.colorcolumn = "73" -- indicating where text needs to wrap
    end)
  end,
})


--------------------------------------------------------
-- OTHER
--------------------------------------------------------

vim.keymap.set("n", "|", "@w", { desc = "Replay 'w'-macro" })
vim.keymap.set("n", "<leader>tr", "/__STRING<CR>\"_ci\"", { desc = "Insert into next translation" })
vim.keymap.set("n", "<leader>no", ":nohlsearch<CR>", { desc = "Remove search highlights" })

-- vim.keymap.set("n", "<leader>vil", "mm0v$`m", { desc = "Visual mark line" })
-- vim.keymap.set("n", "<leader>vil", "0v$", { desc = "Visual mark line (you can use yss from vim surround)" })

-- vim.keymap.set("n", "<leader>classt", "f{a`${<esc>f}i}`<esc>B", { desc = "{classes.___} -> {`${classes.___} `}" })
-- vim.keymap.set("n", "<leader>classu", "f`xxxf}xxB", { desc = "{`${classes.___}`} -> {classes.___}" })
-- vim.keymap.set("n", "J", "mzJ`z", { desc = "Remove lines below" }) -- keep cursor at the same place
vim.keymap.set("n", "<leader>pt", ":echo expand('%:p')<CR>", { desc = "Print path to current file" })
vim.keymap.set('n', '<leader>ypt', [[<Cmd>let @+ = expand('%:p')<CR>]],
  { desc = "Yank path to current file", noremap = true, silent = true })
-- vim.keymap.set("i", "<C-c>", "<Esc>")                    -- enable same behavior as Esc for escaping vertical edit mode
vim.keymap.set("n", "Q", ":echo 'denne shortcutten er ledig!", { desc = "available shortcut" })
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")--  FUNKER IKKEEEE! (SE 28:39 I VIDEOEN)
-- vim.keymap.set("n", "<leader>rep", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
--   { desc = "Replace all occurences of word under cursor" })
-- vim.keymap.set("n", "<leader>cm", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader><leader>nuke", ":! git reset --hard HEAD && git clean -fd", { desc = "Nuke working tree" })
-- vim.keymap.set("n", "gx", "gx", { desc = "Open link (Netrw)" })
-- vim.keymap.set("n", "<leader>sco", ":set colorcolumn=80<CR>", { desc = "set colorcolumn" })
-- vim.keymap.set("n", "<leader>sclo", ":set colorcolumn=<CR>", { desc = "remove colorcolumn" })
-- vim.keymap.set("n", "n", "nzzzv", { desc = "Go to next occurence" }) -- keep search terms in the middle
-- vim.keymap.set("n", "N", "Nzzzv", { desc = "Go to previous occurence" })
-- vim.keymap.set("n", "<leader>map", ":tab help index<CR>/normal mode<CR>nn28j", { desc = "Find Neovim's default keymaps" })
-- vim.keymap.set("n", "<leader>scroll", ":tab help scrolling<CR>/Scrolling horizontally<CR>nn28j",
--   { desc = "Scrolling help" })


