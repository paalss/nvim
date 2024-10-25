-- vim.opt.guicursor = "" -- tykk cursor i insert mde
vim.o.mouse = ""  -- disable mouse interaction (useful for copy-pasting with mouse)
vim.opt.relativenumber = true
vim.opt.nu = true -- on relativenumber, overwrite 0 with current line number
vim.o.cursorline = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.inccommand = "nosplit"
vim.opt.ignorecase = true -- Ignore case letters when search
vim.opt.smartcase = true  -- Ignore lowercase for the whole pattern

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "73" -- for commit messages

vim.cmd [[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]

-- share neovim clipboard with OS system (works for windows 11 & Ubuntu in Terminal)
-- vim.o.clipboard = 'unnamedplus'
