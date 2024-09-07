local diffview = require 'diffview'

diffview.setup {
  keymaps = {
    view = {
      { "n", "<leader>q", ":DiffviewClose<CR>", { desc = "Close Diffview" } },
      { "n", "<S-s>",     "V:diffput<CR>",      { desc = "Stage line" } },
      { "n", "<S-u>",     "V:diffget<CR>",      { desc = "Unstage line" } },
      { "v", "<S-s>",     ":diffput<CR>",       { desc = "Stage selection" } },
      { "v", "<S-u>",     ":diffget<CR>",       { desc = "Unstage selection" } },
      { "n", "dp",        "dp",                 { desc = "Stage hunk" } },   -- add desc to existing map
      { "n", "do",        "do",                 { desc = "Unstage hunk" } }, -- add desc to existing map
    },
    file_panel = {
      { "n", "cc", ":Git commit<CR>",                   { desc = "Commit" } },
      { "n", "ca", ":Git commit --amend<CR>",           { desc = "Commit amend" } },
      { "n", "ce", ":Git commit --amend --no-edit<CR>", { desc = "Commit amend no-edit" } },
      { "n", "q",  "<C-w>l:DiffviewClose<CR>",          { desc = "Close Diffview" } },
    },
    file_history_panel = {
      -- similar: Diffview builtin functionality: CTRL ALT d
      { "n", "<leader>c",        "0f|;w:DiffviewOpen <C-r><C-w><CR>", { desc = "Compare with commit" } },                   -- walk to <commit-hash>, run :DiffviewOpen <commit-hash>
      { "n", "<leader><leader>", "0f|;w:G checkout <C-r><C-w><CR>",   { desc = "Checkout to commit (Diffview/Fugitive)" } } -- walk to <commit-hash>, run :DiffviewOpen <commit-hash>
    }
  }
}

vim.api.nvim_create_user_command("Glo", "DiffviewFileHistory", {})

-- Git status and close
vim.keymap.set("n", "<leader>dd", ":DiffviewOpen<CR>", { desc = "Open git status (compare current index)" })
vim.keymap.set("n", "<leader>dq", ":DiffviewFocusFiles<CR><C-w>l:DiffviewClose<CR>", { desc = "Quit/close Diffview" }) -- TODO: disable if it's unnecessary

-- Git history
vim.keymap.set("n", "<leader>dlo", ":DiffviewFileHistory<CR>", { desc = "Show commit history (Diffview)" })
vim.keymap.set("n", "<leader>dlgp", ":DiffviewFileHistory %<CR>",
  { desc = "Show commit history for current file (Diffview)" })

-- Compare working index with...

-- -- branch
vim.keymap.set("n", "<leader>dy", ":DiffviewOpen origin/master<CR>", { desc = "Compare with master (Diffview)" })
vim.keymap.set("n", "<leader>dr", ":DiffviewOpen origin/main<CR>", { desc = "Compare with main (Diffview)" })

-- -- word under cursor
vim.keymap.set("n", "<leader>dcc", ":DiffviewOpen <C-r><C-w><CR>",
  { desc = "Compare with commit-hash/branch under cursor (Diffview)" })

-- -- Prompt-value branch
local function open_diffview()
  local branch = vim.fn.input("Enter the branch/commit to compare with: ")
  vim.cmd("DiffviewOpen " .. branch)
end
vim.keymap.set("n", "<leader>df", open_diffview, { desc = "Compare with specified branch (Diffview)" })
