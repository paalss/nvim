vim.g.mapleader = " "

 -- returnere til nvim file explorer

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- space pv

vim.keymap.set("n", "<A-k>", ":m-2<CR>")  -- Alt k --> move line down
vim.keymap.set("n", "<A-j>", ":m+<CR>")  -- Alt j --> mode line up
vim.keymap.set("i", "<A-j>", "<Esc>:m+<CR>")
vim.keymap.set("i", "<A-k>", "<Esc>:m-2<CR>")

 -- overlater dette til autohotkey/autokey script
 vim.keymap.set("i", "<A-p>", "{}<Esc>i")
 vim.keymap.set("i", "<A-å>", "}")
 vim.keymap.set("i", "<A-ø>", "[]<Esc>i")
 vim.keymap.set("i", "<A-æ>", "]")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")  -- keep search terms in the middle
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

 vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")                                            -- disable Q
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")--  FUNKER IKKEEEE! (SE 28:39 I VIDEOEN)
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

 -- quick fix list navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

 -- replace the word your cursor is on
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
