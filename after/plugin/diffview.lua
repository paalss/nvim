local diffview = require 'diffview'

diffview.setup {
  keymaps = {
    view = {
      { "n", "q",     ":DiffviewClose<CR>", { desc = "Close Diffview" } },
      { "v", "<S-s>", ":diffput<CR>",       { desc = "Stage selection" } },
      { "n", "dp",    "dp",                 { desc = "Stage hunk" } } -- add desc to existing map
    },
    file_panel = {
      { "n", "cc",  ":Git commit<CR>",                   { desc = "Commit" } },
      { "n", "caa", ":Git commit --amend<CR>",           { desc = "Commit amend" } },
      { "n", "can", ":Git commit --amend --no-edit<CR>", { desc = "Commit amend no-edit" } },
      { "n", "q",   "<C-w>l:DiffviewClose<CR>",          { desc = "Close Diffview" } },
    },
  }
}

-- Git status and close
vim.keymap.set("n", "<leader>gg", ":DiffviewOpen<CR>", { desc = "Open git status (compare current index)" })
vim.keymap.set("n", "<leader>gh", ":DiffviewFocusFiles<CR><C-w>l:DiffviewClose<CR>", { desc = "Close Diffview" }) -- TODO: disable if it's unnecessary

-- Git log
vim.keymap.set("n", "<leader>glo", ":DiffviewFileHistory<CR>", { desc = "Show git history" })
vim.keymap.set("n", "<leader>glgp", ":DiffviewFileHistory %<CR>", { desc = "Show git history for current file" })

-- Compare working index with branch
vim.keymap.set("n", "<leader>gy", ":DiffviewOpen origin/master<CR>", { desc = "Compare with master" })
vim.keymap.set("n", "<leader>gr", ":DiffviewOpen origin/main<CR>", { desc = "Compare with main" })
