-- https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
require('telescope').load_extension("adjacent")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    file_ignore_patterns = { ".git/", "node_modules", "dist/", "index.ts", ".idea", "assets" },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.cycle_history_next,
        ["<C-k>"] = actions.cycle_history_prev,
      },
    }
  },

  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--hidden", "--no-ignore-vcs" },
    },
    -- live_grep = {
      -- grep_open_files = false,
      -- grep_command = { "rg", "--files", "--hidden", "--no-ignore-vcs" },
    -- },
    help_tags = {
      mappings = {
        i = {
          -- open help_tags result in new tab instead of split
          ["<CR>"] = actions.select_tab
        }
      }
    }
  }
}


-- vim.keymap.set('n', '<leader>sq', function(...)
--   actions.send_to_qflist(...)
--   actions.open_qflist(...)
-- end, { desc = "Send to quickfix list" })


-- file search
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files (for neovim-in-IDE-terminal' })
-- vim.keymap.set('n', '<leader><C-p>', [[<cmd>Telescope find_files hidden=true<CR>]],
-- { desc = "Find hidden files", noremap = true })
vim.keymap.set('n', '<leader><C-p>', builtin.git_files, { desc = "Find git files" })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Search open buffers' })
vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = 'Search Recent (oldfiles) Files ("." for repeat)' })
vim.keymap.set('n', '<leader>adj', "<cmd>Telescope adjacent<CR>",
  { desc = "Find adjacent files", noremap = true, silent = false })

-- text search
vim.keymap.set('n', '<leader>pø', builtin.grep_string, { desc = 'Current word search' })
vim.keymap.set('n', '<leader>pp', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Text search" })
vim.keymap.set('n', '<leader>p0', builtin.live_grep, { desc = 'Live text search' })

-- git search -- shortcut convention: use oh-my-bash/zsh -ish
-- vim.keymap.set('n', '<leader>glo', builtin.git_commits, { desc = 'Show git history (Telescope)' })
-- vim.keymap.set('n', '<leader>glod', builtin.git_bcommits, { desc = 'Show git history (diff)' })
-- vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Show git branches' })
-- vim.keymap.set('n', '<leader>gstl', builtin.git_stash, { desc = 'Show git stashes' })
-- vim.keymap.set('n', '<leader>gst', builtin.git_status, { desc = 'Show git status' })

-- colorscheme
vim.keymap.set('n', '<leader>scr', builtin.colorscheme, { desc = 'Search and set colorscheme' })

-- telescope
-- vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = 'Search telescope functionality' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = 'Continue last search' })
vim.keymap.set('n', '<leader>planets', builtin.planets, { desc = 'Literal telescope' })

-- current file text search previewed in buffer
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '/ Search results in telescope window' })

-- other
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'Find keymaps' })
-- vim.keymap.set('n', '<C-l>', [[<cmd>Telescope keymaps hidden=true<CR>]], { desc = "Find keymaps", noremap = true })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search help tags' })
vim.keymap.set('n', '<leader>sg', builtin.registers, { desc = 'Search paste registers registry clipboard' })
vim.keymap.set('n', '<leader>si', builtin.diagnostics, { desc = 'Search diagnostics' })

-- search neovim ~/.config
vim.keymap.set('n', '\\<C-p>', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Search Neovim ~/.config files' })

-- search live_rep in neovim ~/.config
vim.keymap.set('n', '\\p0', function()
  builtin.live_grep { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Live text search Neovim ~/.config files' })
