-- shortcuts/typing

vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-2>", "@", { desc = "At" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-3>", "~", { desc = "Tilde" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-4>", "$", { desc = "Dollar sign" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-5>", "%", { desc = "Percent" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-|>", "`", { desc = "Bactick" })


-- line management

-- -- move line
vim.keymap.set("n", "<A-k>", ":m-2<CR>", { desc = "Move line up" })
vim.keymap.set("n", "<A-j>", ":m+<CR>", { desc = "Move line down" })
vim.keymap.set("n", "<A-Up>", ":m-2<CR>", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":m+<CR>", { desc = "Move line down" })

-- -- move lines
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line(s) down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line(s) up" })
vim.keymap.set("v", "<A-Up>", ":m '>+1<CR>gv=gv", { desc = "Move line(s) up" })
vim.keymap.set("v", "<A-Down>", ":m '<-2<CR>gv=gv", { desc = "Move line(s) down" })

-- -- add new/delete line
vim.keymap.set("n", "<S-c>", "cc<esc>", { desc = "delete line" })
vim.keymap.set("n", "<leader>o", "o<esc>", { desc = "add new line below" })
vim.keymap.set("n", "<leader>O", "O<esc>", { desc = "add new line above" })


-- code snippets

vim.keymap.set("n", "<leader>tg", "i```<CR>```<esc>kA", { desc = "Add code block in markdown" })
vim.keymap.set("n", "<leader>tbg", "i```bash<CR>```<esc>O", { desc = "Add bash code block in markdown" })
vim.keymap.set("n", "<leader>txg", "i```tsx<CR>```<esc>O", { desc = "Add tsx code block in markdown" })


-- action shortcuts

-- -- pasting
vim.keymap.set("n", "<leader>spa", ":set paste<CR>", { desc = "Set paste" })
vim.keymap.set("n", "<leader>sno", ":set nopaste<CR>", { desc = "Set nopaste" })
vim.keymap.set("n", "<leader>po", ":set paste<CR>\"*p<esc>:set nopaste<CR>", { desc = "Paste from OS registry" })

-- -- basic commands
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Write/save" })
vim.keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Write all files" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>x", ":x<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>so", ":so<CR>", { desc = "Source file" })

-- -- registers
vim.keymap.set("x", "<leader>P", "\"_dP")
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set({ "n", "v" }, "<leader>de", "\"_d")

-- -- all text
vim.keymap.set("n", "<A-v>", "ggVG", { desc = "mark all" })
vim.keymap.set("n", "<A-y>", ":%y<CR>", { desc = "yank all" })
vim.keymap.set("n", "<leader><A-y>", ":%y+<CR>", { desc = "yank all to OS registry" })
vim.keymap.set("n", "<A-d>", ":%d<CR>", { desc = "delete all" })
vim.keymap.set("n", "<leader><A-d>", ":%d+<CR>", { desc = "delete all" })
vim.keymap.set("n", "<leader>pal", "ggVGp", { desc = "paste all" })

-- -- casing management
vim.keymap.set("n", "<leader>snakam", "f_x~", { desc = "snake_case -> camelCase" })
vim.keymap.set("n", "<leader>classt", "f{a`${<esc>f}i}`<esc>B", { desc = "{classes.___} -> {`${classes.___} `}" })
vim.keymap.set("n", "<leader>classu", "f`xxxf}xxB", { desc = "{`${classes.___}`} -> {classes.___}" })

-- -- snippets
vim.keymap.set("n", "<leader>colu", ":read ~/.config/nvim/snippets/columns.html<CR>", { desc = " Add HTML columns" })

-- -- formatting
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end, { desc = "lsp format" })

-- -- -- For React files (JavaScript and TypeScript)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  callback = function()
    -- vim.api.nvim_buf_set_keymap(0, "n", "<leader>f", ":Neoformat<CR>",
    -- { desc = "Format with Neoformat", noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>start", ":!npm start<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>dev", ":!npm dev<CR>", { noremap = true, silent = true })
  end,
})

-- -- quickfix list
vim.keymap.set("n", "<leader>co", ":copen<CR>", { desc = "Open quickfix list" })
vim.keymap.set("n", "<leader>clo", ":ccl<CR>", { desc = "close quickfix list" })

-- -- quick fix list navigation
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- -- indenting
vim.keymap.set("v", ">", ">gv", { desc = "add indent" })
vim.keymap.set("v", "<", "<gv", { desc = "remove indent" })

-- -- other
vim.keymap.set("n", "<leader><leader>dca", "gg/#<CR>Vggy:cq<CR>",
  { desc = "Abort everything (amend commits, merge commits etc.)" })
vim.keymap.set("n", "<leader>dca", "gg/#<CR>kdgg:q!<CR>",
  { desc = "Abort git commit (does not work with amended commits, they will still commit for some reason)" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Remove lines below" }) -- keep cursor at the same place
vim.keymap.set("n", "<leader>pt", ":echo expand('%:p')<CR>", { desc = "print path to current file" })
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>", { desc = "disabled" }) -- disable Q
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")--  FUNKER IKKEEEE! (SE 28:39 I VIDEOEN)
vim.keymap.set("n", "<leader>rep", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
  { desc = "Replace all occurences of word under cursor" })
vim.keymap.set("n", "<leader>cm", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader><leader>nuke", ":! git reset --hard HEAD && git clean -fd", { desc = "Nuke working tree" })
vim.keymap.set("n", "gx", "gx", { desc = "Open link (Netrw)" })

-- navigation

-- -- code navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll page down" }) -- keep cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll page up" })

vim.keymap.set("n", "<C-e>", "<C-e><C-e>", { desc = "Scroll down" }) -- scroll 2 lines
vim.keymap.set("n", "<C-y>", "<C-y><C-y>", { desc = "Scroll up" })

-- vim.keymap.set("n", "<S-d>", "<S-L>2j", { desc = "Scroll 2 lines down" })
-- vim.keymap.set("n", "<S-u>", "<S-H>2k", { desc = "Scroll 2 lines up" })

-- vim.keymap.set("n", "n", "nzzzv", { desc = "Go to next occurence" }) -- keep search terms in the middle
-- vim.keymap.set("n", "N", "Nzzzv", { desc = "Go to previous occurence" })

-- -- file navigation
vim.keymap.set("n", "<leader>vv", vim.cmd.Ex)

-- -- help pages
vim.keymap.set("n", "<leader>map", ":tab help index<CR>/normal mode<CR>nn28j", { desc = "Find Neovim's default keymaps" })
vim.keymap.set("n", "<leader>scroll", ":tab help scrolling<CR>/Scrolling horizontally<CR>nn28j",
  { desc = "Scrolling help" })


-- split management

-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize -4<CR>", { desc = "Resize split up" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +4<CR>", { desc = "Resize split down" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -4<CR>", { desc = "Resize split left" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +4<CR>", { desc = "Resize split right" })

vim.keymap.set("n", "<A-w>", "<C-w>w", { desc = "Go to next split" })
