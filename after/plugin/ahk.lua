-- keymaps for autohotkey

vim.keymap.set("n", "<leader>ahk", ":!timeout 0.1s bash ~/.config/nvim/lua/autohotkey/start-ahk.sh<CR><CR>", {
  desc = "Start autohotkey"
})
