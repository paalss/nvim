require("neo-tree").setup({
  close_if_last_window = true,
  window = {
    mappings = {
      ["l"] = "open"
    }
  },
  filesystem = {
    filtered_items = {
      visible = true
      -- hide_dotfiles = false,
      -- hide_gitignored = false
    },
    hide_by_name = {
      -- "node_modules"
    },
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true
    },
    hijack_netrw_behavior = "disabled",
  }
})
vim.keymap.set("n", "<A-r>", "<cmd>Neotree toggle left<cr>", { desc = "Toggle file explorer" })
-- vim.keymap.set("n", "<A-r>h", "<cmd>Neotree toggle reveal left<cr>", { desc = "Toggle file explorer (left sidebar)" })
-- vim.keymap.set("n", "<A-r>k", "<cmd>Neotree toggle reveal float<cr>", { desc = "Toggle file explorer (float)" })
-- vim.keymap.set("n", "<A-r>l", "<cmd>Neotree toggle reveal current<cr>", { desc = "Toggle file explorer (current)" })
-- vim.keymap.set("n", "<A-r>c", "<cmd>Neotree close<cr>", { desc = "Close Neotree" })
-- vim.keymap.set("n", "<A-r>g", "<cmd>Neotree git_status<cr>", { desc = "Show uncommited changes" })
