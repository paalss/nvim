local diffview = require 'diffview'

diffview.setup {
  watch_index = true,
  keymaps = {
    view = {
      { "n", "<A-q>",  ":DiffviewClose<CR>", { desc = "Close Diffview" } },
      { "n", "<S-s>",  "V:diffput<CR>",      { desc = "Stage line" } },
      { "n", "<S-u>",  "V:diffget<CR>",      { desc = "Unstage line" } },
      { "v", "<S-s>",  ":diffput<CR>",       { desc = "Stage selection" } },
      { "v", "<S-u>",  ":diffget<CR>",       { desc = "Unstage selection" } },
      { "n", "dp",     "dp",                 { desc = "Stage hunk" } },   -- add desc to existing map
      { "n", "do",     "do",                 { desc = "Unstage hunk" } }, -- add desc to existing map
      { "n", "<F7>",   "]c",                 { desc = "Go to next hunk" } },
      { "n", "<S-F7>", "[c",                 { desc = "Go to prev hunk" } },
      { "n", "<A-c>",  "]c",                 { desc = "Go to next hunk" } },
      { "n", "<A-d>",  "[c",                 { desc = "Go to prev hunk" } },
    },
    file_panel = {
      { "n", "<A-q>", ":DiffviewClose<CR>",                { desc = "Close Diffview" } },
      { "n", "q",     "<C-w>l:DiffviewClose<CR>",          { desc = "Close Diffview" } },
      { "n", "cc",    ":Git commit<CR>",                   { desc = "Commit" } },
      { "n", "ca",    ":Git commit --amend<CR>",           { desc = "Commit amend" } },
      { "n", "ce",    ":Git commit --amend --no-edit<CR>", { desc = "Commit amend no-edit" } },
    },
    file_history_panel = {
      { "n", "<A-q>",            ":DiffviewClose<CR>",                         { desc = "Close Diffview" } },
      -- find commit hash regardless of cursor positioning setup:

      -- $file<CR>f|;w ____ breakdown

      -- $ ensure cursor is after 'file'
      -- ?file<CR> backwards search for 'file'
      -- f1;w walk to <commit hash>
      -- :DiffviewOpen<CR> Open Diffview <commit hash>
      { "n", "<leader>c",        "$?file<CR>f|;w:DiffviewOpen <C-r><C-w><CR>", { desc = "Compare with commit" } }, -- similar: Diffview builtin functionality: CTRL ALT d

      { "n", "<leader><leader>c", "y :!git checkout <C-r><C-w><CR>",   { desc = "Checkout to commit" } },
      -- SILENT VERSION: { "n", "<leader><leader>c", "y :silent exec '!git checkout <C-r><C-w>'<CR>",   { desc = "Checkout to commit (Diffview)" } },
    }
  }
}

vim.api.nvim_create_user_command("Dh", "DiffviewFileHistory", { desc = "Show commit history" })
vim.api.nvim_create_user_command("Dhg", "DiffviewFileHistory %", { desc = "Show commit history for current file" })

-- Git status and close
vim.keymap.set("n", "<leader>dd", ":DiffviewOpen<CR>", { desc = "Open git status (compare current index)" })
vim.keymap.set("n", "<leader><leader>dd", ":DiffviewOpen<CR>", { desc = "Open git status (compare current index)" })
-- vim.keymap.set("n", "<leader>dq", ":DiffviewFocusFiles<CR><C-w>l:DiffviewClose<CR>", { desc = "Quit/close Diffview" }) -- TODO: disable if it's unnecessary

-- -- commits
vim.keymap.set("v", "<leader>dh", ":DiffviewFileHistory<CR>", { desc = "Show commit history for current selection" })
vim.keymap.set("n", "<leader>dh", ":DiffviewFileHistory %<CR>", { desc = "Show commit history for current file" })

vim.keymap.set("n", "<leader><leader>his", ":DiffviewFileHistory --range=origin/HEAD...HEAD --right-only --no-merges",
  { desc = "Big PR review: Review individual commits " })


-- COMPARE WORKING INDEX WITH...

-- -- branch
-- vim.keymap.set("n", "<leader><leader><leader>dev", ":DiffviewOpen origin/HEAD...HEAD --imply-local<CR>",
--   { desc = "Compare with develop (Diffview)" })
vim.keymap.set("n", "<leader><leader>mas", ":DiffviewOpen master<CR>", { desc = "Compare with master (Diffview)" })
vim.keymap.set("n", "<leader><leader>mai", ":DiffviewOpen main<CR>", { desc = "Compare with main (Diffview)" })
vim.keymap.set("n", "<leader><leader>dev", ":DiffviewOpen develop<CR>", { desc = "Compare with develop (Diffview)" })
vim.keymap.set("n", "<leader><leader>mac", ":DiffviewOpen origin/mac-develop<CR>",
  { desc = "Compare with mac-develop (Diffview)" })

-- -- word under cursor
vim.keymap.set("n", "<leader>dcc", ":DiffviewOpen <C-r><C-w><CR>",
  { desc = "Compare with commit-hash/branch under cursor (Diffview)" })

-- -- -- compare with specified branch (variant without fzf-lua)
-- local function type_branch_to_compare_with()
--   local branch = vim.fn.input("Enter the branch/commit to compare with: ")
--   vim.cmd("DiffviewOpen " .. branch)
-- end
-- vim.keymap.set("n", "<leader>df", type_branch_to_compare_with, { desc = "Compare with specified branch (Diffview)" })

-- kode tatt fra: https://github.com/sindrets/diffview.nvim/issues/11#issuecomment-1520296361
select_branch_to_compare_with = function()
  local lib = require("diffview.lib")
  local view = lib.get_current_view()
  if view then
    vim.cmd.DiffviewClose()
  else
    require("fzf-lua").fzf_exec("git branch -a", {
      prompt = "diff:",
      actions = {
        ["default"] = function(selected)
          vim.cmd.DiffviewOpen({ args = { selected[1] } })
        end,
      },
    })
  end
end

vim.keymap.set("n", "<leader>df", select_branch_to_compare_with, { desc = "Compare with specified branch (Diffview)" })

