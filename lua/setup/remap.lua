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


--------------------------------------------------------
-- LINE MANAGEMENT
--------------------------------------------------------


-- MOVE LINE

vim.keymap.set("n", "<A-k>", ":m-2<CR>", { desc = "Move line up" })
vim.keymap.set("n", "<A-j>", ":m+<CR>", { desc = "Move line down" })


-- MOVE LINES

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line(s) down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line(s) up" })


-- ADD NEW LINE

vim.keymap.set("n", "<leader>o", "o<esc>", { desc = "add new line below" })
vim.keymap.set("n", "<leader>O", "O<esc>", { desc = "add new line above" })


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


-- SET PASTE

vim.keymap.set("n", "<leader>sep", ":set paste<CR>", { desc = "Set paste" })
-- vim.keymap.set("n", "<leader>set", ":set paste!<CR>", { desc = "Set toggle paste" })
vim.keymap.set("n", "<leader>sen", ":set nopaste<CR>", { desc = "Set nopaste" })
vim.keymap.set("n", "<leader>po", ":set paste<CR>\"+p<esc>:set nopaste<CR>",
  { desc = "Paste from OS registry (\"+p is slow)" })


-- REGISTERS

-- -- unnamed plus / OS registry
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "Yank to OS registry (y)" })
vim.keymap.set({ "n", "v" }, "<leader>Y", "\"+Y", { desc = "Yank to OS registry (Y)" })
-- vim.keymap.set("n", "<C-i>p", "\"+p", { desc = "Paste from OS registry" })
vim.keymap.set({ "n", "v" }, "+", "\"+", { desc = "Use OS register" })

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
-- vim.keymap.set("n", "-y", "mo^y$`o", { desc = "Line (-) yank" })
-- vim.keymap.set("n", "-d", "^d$", { desc = "Line (-) delete" })
-- vim.keymap.set("n", "-v", "0v$", { desc = "Line (-) mark (for surround you can always use yss from vim-surround)" })
vim.keymap.set("n", "<leader>yl", "mo^y$`o", { desc = "Yank Line" })
vim.keymap.set("n", "<leader><leader>yl", "mo^\"+y$`o", { desc = "Yank Line to OS registry" })
vim.keymap.set("n", "<leader>dl", "^d$", { desc = "Delete Line" })
vim.keymap.set("n", "<leader>vl", "0v$", { desc = "Visual mark Line (you can use yss from vim surround)" })

-- -- self closing tag: <input onClick={() => something()} />
--                        |-cursor here
vim.keymap.set("n", "<leader>vat", "lF<v/\\/><CR>", { desc = "Visual mark aroud self closing tag" })
vim.keymap.set("n", "<leader>yat", "lF<v/\\/><CR>y", { desc = "Yank around self closing tag" })
vim.keymap.set("n", "<leader><leader>yat", "lF<v/\\/><CR>\"+y", { desc = "Yank around self closing tag to OS registry" })
vim.keymap.set("n", "<leader>dat", "lF<v/\\/><CR>d", { desc = "Delete around self closing tag" })

-- --  surroundings
-- vim.keymap.set("n", "<leader>dsl", "mo%dd`odd", { desc = "Delete Surrounding Lines" }) -- det funker ikke å bruke matchit-% i remaps :-- vim.keymap.set("n", "<leader>dsl", "mo%dd`odd", { desc = "Delete Surrounding Lines" }) -- det funker ikke å bruke matchit-% i remaps :-- vim.keymap.set("n", "<leader>dsl", "mo%dd`odd", { desc = "Delete Surrounding Lines" }) -- det funker ikke å bruke matchit-% i remaps :(((-- vim.keymap.set("n", "<leader>dsl", "mo%dd`odd", { desc = "Delete Surrounding Lines" }) -- det funker ikke å bruke matchit-% i remaps :(
-- vim.keymap.set("n", "<leader>dsl", "mo%dd`odd", { desc = "Delete Surrounding Lines" }) -- det funker ikke å bruke matchit-% i remaps :(
-- vim.keymap.set("n", "<leader>dsl", "mo%dd`odd", { desc = "Delete Surrounding Lines" }) -- det funker ikke å bruke matchit-% i remaps :(
-- vim.keymap.set("n", "<leader>dsa", "%", { desc = "Delete Surrounding Lines" })


--------------------------------------------------------
-- CASING
--------------------------------------------------------

-- vim.keymap.set("n", "<leader>snakam", "f_x~", { desc = "snake_case -> camelCase" })
vim.keymap.set("n", "<leader>ci", "g~i", { desc = "Toggle Case Inside ..." })
vim.keymap.set("n", "<leader>ca", "g~a", { desc = "Toggle Case Around ..." })
vim.keymap.set("n", "<leader>cl", "V~", { desc = "Toggle Case Line" })
-- vim.keymap.set("n", "-c", "V~", { desc = "Line (-) toggle case" })


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
vim.keymap.set("n", "<leader>ccl", ":ccl<CR>", { desc = "close quickfix list" })


-- QUICK FIX LIST NAVIGATION

vim.keymap.set("n", "<A-a>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<A-q>", "<cmd>cprev<CR>")
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

-- vim.keymap.set("n", "<C-d>", "<C-d>", { desc = "Scroll page down" })
-- vim.keymap.set("n", "<C-u>", "<C-u>", { desc = "Scroll page up" })
vim.keymap.set("n", "<C-d>", "23j", { desc = "Scroll page down" })
vim.keymap.set("n", "<C-u>", "23k", { desc = "Scroll page up" })

vim.keymap.set("n", "<C-e>", "11j", { desc = "Scroll down" })
vim.keymap.set("n", "<C-y>", "11k", { desc = "Scroll up" })


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
vim.keymap.set("n", "<leader>tr", "/__STRING<CR>\"_ci\"", { desc = "Populate next Translation" })
vim.keymap.set("i", "<C-a>", "<esc>/__STRING<CR>\"_ci\"", { desc = "Populate next translation (from insert mode)" })
vim.keymap.set("n", "<leader>no", ":nohlsearch<CR>", { desc = "Remove search highlights" })

-- vim.keymap.set("n", "<leader>classt", "f{a`${<esc>f}i}`<esc>B", { desc = "{classes.___} -> {`${classes.___} `}" })
-- vim.keymap.set("n", "<leader>classu", "f`xxxf}xxB", { desc = "{`${classes.___}`} -> {classes.___}" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Remove lines below" })
vim.keymap.set("n", "<leader>pt", ":echo expand('%:p')<CR>", { desc = "Print path to current file" })
vim.keymap.set('n', '<leader>ypt', [[<Cmd>let @+ = expand('%:p')<CR>]],
  { desc = "Yank path to current file", noremap = true, silent = true })
-- vim.keymap.set("i", "<C-c>", "<Esc>")                    -- enable same behavior as Esc for escaping vertical edit mode
vim.keymap.set("n", "Q", ":echo 'denne shortcutten er ledig!", { desc = "available shortcut" })
vim.keymap.set("n", "X", "<nop>", { desc = "Deactivated" })

vim.keymap.set("n", "<leader>vf", "%", { desc = "matchit %", noremap = true })

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")--  FUNKER IKKEEEE! (SE 28:39 I VIDEOEN)
vim.keymap.set("n", "<leader>rep", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
  { desc = "Replace all occurences of word under cursor" })
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
