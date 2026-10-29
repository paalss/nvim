local diffview = require 'diffview'

diffview.setup {
  watch_index = true,
  keymaps = {
    view = {
      { "n", "•", ":xall!<CR>", { desc = "Close Diffview" } },
      -- Save and close all windows
      -- { "n", "•", ":DiffviewClose<CR>", { desc = "Close Diffview" } },
      -- { "n", "ZZ", ":DiffviewFocusFiles<CR><C-w>l:DiffviewClose<CR>", { desc = "Quit/close Diffview" }},

      { "n", "<S-s>", "V:diffput<CR>", { desc = "Stage line" } },
      { "n", "<S-u>", "V:diffget<CR>", { desc = "Unstage line" } },

      -- deactivated: <S-s> (S) is useful for nvim surround
      -- { "v", "<S-s>", ":diffput<CR>", { desc = "Stage selection" } },
      -- { "v", "<S-u>", ":diffget<CR>", { desc = "Unstage selection" } },

      { "n", "dp", "dp]c", { desc = "Stage hunk and go to next" } },   -- add desc to existing map
      { "n", "do", "do", { desc = "Unstage hunk" } }, -- add desc to existing map
      -- dette er nødvendig for at "go to next/prev" skal fungere i venstre diffview-window
      -- de fra gitsigns fungerer på høyre diffview og vanlig view
      -- { "n", "<F7>", "]c", { desc = "Go to next hunk" } },
      -- { "n", "<S-F7>", "[c", { desc = "Go to prev hunk" } },
      { "n", "ç", "]c", { desc = "A-c: Go to next hunk" } },
      { "n", "∂", "[c", { desc = "A-d: Go to prev hunk" } },
    },
    file_panel = {
      { "n", "•", ":xall!<CR>", { desc = "Close Diffview" } },
      -- { "n", "•", ":DiffviewClose<CR>", { desc = "Close Diffview" } },
      -- { "n", "ZZ", ":DiffviewClose<CR>", { desc = "Close Diffview" } },
      { "n", "q", "<C-w>l:DiffviewClose<CR>", { desc = "Close Diffview" } },

      -- skip having to navigate to right panel
      { "n", "ç", "<C-w>l]c", { desc = "A-c: Go to view pane's next hunk" } },

      --ra rely used
      -- { "n", "cc", ":Git commit<CR>", { desc = "Commit" } },
      -- { "n", "ca", ":Git commit --amend<CR>", { desc = "Commit amend" } },
      -- { "n", "ce", ":Git commit --amend --no-edit<CR>", { desc = "Commit amend no-edit" } },
    },
    file_history_panel = {
      { "n", "•", ":xall!<CR>", { desc = "Close Diffview" } },
      -- { "n", "•", ":DiffviewClose<CR>", { desc = "Close Diffview" } },
      -- { "n", "ZZ", ":DiffviewFocusFiles<CR><C-w>l:DiffviewClose<CR>", { desc = "Quit/close Diffview" }},
      -- find commit hash regardless of cursor positioning setup:

      -- $file<CR>f|;w ____ breakdown

      -- $ ensure cursor is after 'file'
      -- ?file<CR> backwards search for 'file'
      -- f1;w walk to <commit hash>
      -- :DiffviewOpen<CR> Open Diffview <commit hash>
      { "n", "<leader>c", "$?file<CR>f|;w:DiffviewOpen <C-r><C-w><CR>", { desc = "Compare with commit" } }, -- similar: Diffview builtin functionality: CTRL ALT d

      { "n", "<leader><leader>c", "y :!git checkout <C-r><C-w><CR>", { desc = "Checkout to commit" } }
      -- SILENT VERSION: { "n", "<leader><leader>c", "y :silent exec '!git checkout <C-r><C-w>'<CR>",   { desc = "Checkout to commit (Diffview)" } },
    }
  }
}

-- GIT LOG all or selected area - [l]og [d]iffview
vim.keymap.set({"n", "v"}, "<leader>ld", ":DiffviewFileHistory<CR>", { desc = "Show commit history / git log (if visual-mode: for current selection)" })
vim.api.nvim_create_user_command("Ld", "DiffviewFileHistory", { desc = "Show commit history / git log" })

-- GIT LOG CURRENT FILE - [l]og [f]ile [d]iffview
vim.keymap.set("n", "<leader>lfd", ":DiffviewFileHistory %<CR>", { desc = "Show commit history for current file" })
vim.api.nvim_create_user_command("Lfd", "DiffviewFileHistory %", { desc = "Show commit history / git log for current file" })

-- Git status and close - [s]tatus [d]iffview
vim.keymap.set("n", "<leader>sd", ":DiffviewOpen<CR>", { desc = "Open git status (compare current index)" })
-- vim.keymap.set("n", "<leader>dq", ":DiffviewFocusFiles<CR><C-w>l:DiffviewClose<CR>", { desc = "Quit/close Diffview" }) -- TODO: disable if it's unnecessary

-- -- commits

-- vim.keymap.set("n", "<leader><leader>his", ":DiffviewFileHistory --range=origin/HEAD...HEAD --right-only --no-merges",
--   { desc = "Big PR review: Review individual commits " })


-- COMPARE WORKING INDEX WITH...

-- -- branch
-- vim.keymap.set("n", "<leader><leader><leader>dev", ":DiffviewOpen origin/HEAD...HEAD --imply-local<CR>",
--   { desc = "Compare with develop (Diffview)" })
vim.keymap.set("n", "<leader><leader>mas", ":DiffviewOpen master<CR>", { desc = "Compare with master (Diffview)" })
vim.keymap.set("n", "<leader><leader>mai", ":DiffviewOpen main<CR>", { desc = "Compare with main (Diffview)" })
vim.keymap.set("n", "<leader><leader>dev", ":DiffviewOpen develop<CR>", { desc = "Compare with develop (Diffview). NOTE: STAGE ANY UNCOMMITTED CHANGES YOU WANT TO SEE IN COMPARISON" })
vim.keymap.set("n", "<leader><leader>mac", ":DiffviewOpen origin/develop<CR>",
  { desc = "Compare with develop (Diffview)" })

-- [d]evelop [d]iffview: compare working tree with develop
vim.keymap.set("n", "<leader>dd", ":DiffviewOpen develop<CR>",
  { desc = "Compare with develop (Diffview). NOTE: STAGE ANY UNCOMMITTED CHANGES YOU WANT TO SEE IN COMPARISON" })

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

-- [d]iffview s[p]ecific branch
vim.keymap.set("n", "<leader>dp", select_branch_to_compare_with, { desc = "Compare with specified branch (Diffview)" })

-- [s]earch [s]tatus [f]iles: files shown in `git status` (fzf-lua)
-- icons disabled: this config's pinned nvim-web-devicons predates the
-- get_icons_by_filename/get_icons_by_extension API fzf-lua now requires
vim.keymap.set("n", "<leader>ssf", function()
  require("fzf-lua").git_status({ file_icons = false, git_icons = false, color_icons = false })
end, { desc = "Search files in git status (fzf-lua)" })

-- [s]earch [s]tatus [t]ext: live grep restricted to files shown in `git status`
vim.keymap.set("n", "<leader>sst", function()
  local files = vim.fn.systemlist("git status --porcelain | awk '{print $NF}'")
  if #files == 0 then
    vim.notify("No files in git status", vim.log.levels.INFO)
    return
  end
  require("fzf-lua").live_grep({
    search_paths = files,
    prompt = "status-text> ",
    winopts = { fullscreen = true },
    file_icons = false,
    git_icons = false,
    color_icons = false,
  })
end, { desc = "Live grep in git status files (fzf-lua)" })

-- shared [h]elper: pick a commit from git log, then run `callback(hash)`
local function pick_commit(callback)
  require("fzf-lua").fzf_exec("git log --oneline -n 200", {
    prompt = "commit> ",
    actions = {
      ["default"] = function(selected)
        local hash = selected[1]:match("^%S+")
        callback(hash)
      end,
    },
  })
end

-- git-s[h]ow [d]iffview: show the diff introduced by one picked commit
vim.keymap.set("n", "<leader>hd", function()
  pick_commit(function(hash)
    vim.cmd.DiffviewOpen({ args = { hash .. "^!" } })
  end)
end, { desc = "Open diffview for a picked commit (git show) (fzf-lua)" })

-- git-s[h]ow [s]earch [t]ext: live grep restricted to files touched by one picked commit
vim.keymap.set("n", "<leader>hst", function()
  pick_commit(function(hash)
    local files = vim.fn.systemlist("git show --name-only --pretty=format: " .. hash)
    if #files == 0 then
      vim.notify("No files in commit " .. hash, vim.log.levels.INFO)
      return
    end
    require("fzf-lua").live_grep({
      search_paths = files,
      prompt = "show-text> ",
      winopts = { fullscreen = true },
      file_icons = false,
      git_icons = false,
      color_icons = false,
    })
  end)
end, { desc = "Live grep in files touched by a picked commit (git show) (fzf-lua)" })

-- git-s[h]ow [s]earch [f]iles: files touched by one picked commit
vim.keymap.set("n", "<leader>hsf", function()
  pick_commit(function(hash)
    require("fzf-lua").fzf_exec(
      "git show --name-only --pretty=format: " .. hash,
      {
        prompt = "show-files> ",
        actions = {
          ["default"] = function(selected) vim.cmd("edit " .. selected[1]) end,
        },
      }
    )
  end)
end, { desc = "Search files touched by a picked commit (git show) (fzf-lua)" })

-- [d]evelop [s]earch [f]iles: files changed vs develop, incl. uncommitted/untracked
vim.keymap.set("n", "<leader>dsf", function()
  require("fzf-lua").fzf_exec(
    "{ git diff --name-only develop; git status --porcelain | awk '/^\\?\\?/{print $2}'; } | sort -u",
    {
      prompt = "diff-files> ",
      actions = {
        ["default"] = function(selected) vim.cmd("edit " .. selected[1]) end,
      },
    }
  )
end, { desc = "Search files changed vs develop, incl. uncommitted (fzf-lua)" })

-- [d]evelop [s]earch [t]ext: live grep restricted to files changed vs develop
vim.keymap.set("n", "<leader>dst", function()
  local files = vim.fn.systemlist(
    "{ git diff --name-only develop; git status --porcelain | awk '/^\\?\\?/{print $2}'; } | sort -u")
  if #files == 0 then
    vim.notify("No files differ from develop", vim.log.levels.INFO)
    return
  end
  require("fzf-lua").live_grep({
    search_paths = files,
    prompt = "diff-text> ",
    winopts = { fullscreen = true },
    file_icons = false,
    git_icons = false,
    color_icons = false,
  })
end, { desc = "Live grep in files changed vs develop, incl. uncommitted (fzf-lua)" })

