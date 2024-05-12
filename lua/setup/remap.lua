vim.keymap.set("n", "<leader>vv", vim.cmd.Ex)

-- move line

vim.keymap.set("n", "<A-k>", ":m-2<CR>", { desc = "Move line up" })
vim.keymap.set("n", "<A-j>", ":m+<CR>", { desc = "Move line down" })
vim.keymap.set("n", "<A-Up>", ":m-2<CR>", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":m+<CR>", { desc = "Move line down" })

-- move lines

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line(s) down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line(s) up" })
vim.keymap.set("v", "<A-Up>", ":m '>+1<CR>gv=gv", { desc = "Move line(s) up" })
vim.keymap.set("v", "<A-Down>", ":m '<-2<CR>gv=gv", { desc = "Move line(s) down" })

-- code snippets

vim.keymap.set("n", "<leader>tma", "i```<CR>```<esc>kA", { desc = "Add code block in markdown" })

-- action shortcuts

vim.keymap.set("n", "<leader>dcom", "gg/#<CR>kdgg:q!<CR>",
  { desc = "Abort git commit (does not work with amended commits, they will still commit for some reason)" })
vim.keymap.set("n", "<leader>sepa", ":set paste<CR>", { desc = "Set paste" })
vim.keymap.set("n", "<leader>seno", ":set nopaste<CR>", { desc = "Set nopaste" })
vim.keymap.set("n", "<leader>paste", ":set paste<CR>\"*p<esc>:set nopaste<CR>", { desc = "Paste from OS registry" })

-- -- basic commands
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Write/save" })
vim.keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Write all files" })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>x", ":x<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>so", ":so<CR>", { desc = "Source file" })

-- -- all text
vim.keymap.set("n", "<leader>all", "ggVG", { desc = "mark all" })
vim.keymap.set("n", "<leader>yall", "ggyG", { desc = "yank all" })
vim.keymap.set("n", "<leader>dall", "ggdG", { desc = "delete all" })
vim.keymap.set("n", "<leader>pall", "ggVGp", { desc = "paste all" })

-- -- normal mode line management
vim.keymap.set("n", "<leader>cc", "cc<esc>", { desc = "delete line" })
vim.keymap.set("n", "<leader>o", "o<esc>", { desc = "add new line below" })
vim.keymap.set("n", "<leader>O", "O<esc>", { desc = "add new line above" })

-- -- casing management
vim.keymap.set("n", "<leader>snakam", "f_x~", { desc = "snake_case -> camelCase" })
vim.keymap.set("n", "<leader>classt", "f{a`${<esc>f}i}`<esc>B", { desc = "{classes.___} -> {`${classes.___} `}" })
vim.keymap.set("n", "<leader>classu", "f`xxxf}xxB", { desc = "{`${classes.___}`} -> {classes.___}" })

-- --- other
vim.keymap.set("n", "J", "mzJ`z") -- keep cursor at same place while remvoving end of line whitespaces

-- page up/down

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll page down" }) -- keep cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll page up" })

-- vim.keymap.set("n", "n", "nzzzv", { desc = "Go to next occurence" }) -- keep search terms in the middle
-- vim.keymap.set("n", "N", "Nzzzv", { desc = "Go to previous occurence" })

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>", { desc = "disabled" }) -- disable Q
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")--  FUNKER IKKEEEE! (SE 28:39 I VIDEOEN)
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>cop", ":copen<CR>", { desc = "Open quickfix list" })
vim.keymap.set("n", "<leader>ccl", ":ccl<CR>", { desc = "close quickfix list" })

-- quick fix list navigation
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the word your cursor is on

vim.keymap.set("n", "<leader>rep", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
  { desc = "Replace all occurences of word under cursor" })
vim.keymap.set("n", "<leader>cm", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize -4<CR>", { desc = "Resize split up" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +4<CR>", { desc = "Resize split down" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -4<CR>", { desc = "Resize split left" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +4<CR>", { desc = "Resize split right" })
