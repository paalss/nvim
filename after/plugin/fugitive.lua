vim.keymap.set("n", "<leader>gt", ":Git<CR>", { desc = "Open Git – Fugitive" }) -- TODO: disable if it's unnecessary
vim.keymap.set("n", "<leader>gf", ":Gwrite<CR>", { desc = "Write and stage buffer" }) -- TODO: disable if superseded by gitsign's stage_buffer


-- oh-my-bash style shortcuts

vim.keymap.set("n", "<leader>ga", ":wa<CR>:G add -A<CR>", { desc = "Stage/add all files (omb)" })
vim.keymap.set("n", "<leader>gc", ":G commit<CR>", { desc = "Git commit (omb)" })

-- oh-my-bash style commands -- https://neovim.io/doc/user/lua-guide.html#lua-guide-commands-create

-- :Ga -A
vim.api.nvim_create_user_command('Ga', function(opts)
  vim.cmd("G add " .. opts.args)
end, { nargs = 1 })
-- :Gc
vim.api.nvim_create_user_command('Gc', "G commit --verbose", {})
-- :Gcn
vim.api.nvim_create_user_command('Gcn', "G commit --verbose --amend --no-edit", {})
-- :Gcan
vim.api.nvim_create_user_command('Gcan', "G commit --verbose --amend --no-edit --all", {})

-- fugitive style shortcuts

vim.keymap.set("n", "<leader>S", ":wa<CR>:G add -A<CR>", { desc = "Stage/add all files" })
vim.keymap.set("n", "<leader>U", ":wa<CR>:G restore --staged .<CR>", { desc = "Unstage/remove all files" })
vim.keymap.set("n", "<leader>cc", ":G commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>ca", ":G commit --amend<CR>", { desc = "Git commit --amend" })
vim.keymap.set("n", "<leader>ce", ":G commit --amend --no-edit<CR>", { desc = "Git commit --amend --no-edit" })
vim.keymap.set("n", "<leader>cw", ":G commit --reword<CR>", { desc = "Git commit --amend" })

vim.keymap.set("n", "<leader>g5", ":Gdiffsplit<CR>", { desc = "Open git status (Fugitive)" }) -- TODO: disable if superseded by diffview
vim.keymap.set("n", "\\glo", ":G log<CR>", { desc = "Show git history (Fugitive)" })
vim.keymap.set("n", "\\gr", ":Gdiffsplit main<CR>", { desc = "Compare with main (Fugitive)" })
vim.keymap.set("n", "\\gy", ":Gdiffsplit master<CR>", { desc = "Compare with master (Fugitive)" })
vim.keymap.set("n", "\\gt", ":Gdiffsplit develop<CR>", { desc = "Compare with develop (Fugitive)" })
