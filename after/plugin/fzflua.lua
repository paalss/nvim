-- Failed to run `config` for fzf-lua
--
-- ...alss/.local/share/nvim/lazy/fzf-lua/lua/fzf-lua/init.lua:43: serverstart(): Vim:Failed to start server: no such file or directory. Please make sure 'XDG_RUNTIME_DIR' (
-- /run/user/1000/) is writeable
--
-- # stacktrace:
--   - /fzf-lua/lua/fzf-lua/init.lua:43
--   - lua/setup/lazy.lua:230
--   - lua/setup/init.lua:1
--   - init.lua:1
--

-- not working??
vim.keymap.set("n", "<leader>sr", ":FzfLua resume<CR>", { desc = "Resume previous search" })


-- not necessary as this is covered by fzf.vim
-- :FzfLua live_grep
-- lua
