require('gitsigns').setup {

  -- mislykket forsøk på å enable git blame i yadm dotfiles
  _on_attach_pre = function(bufnr, callback)
      require("gitsigns-yadm").yadm_signs(callback, { bufnr = bufnr })
  end,
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation

    -- In a diff window, [c/]c normally jump between change hunks. But after
    -- opening DiffviewOpen and using "gf" to jump to a file, vim.wo.diff can
    -- still be true even though [c/]c no longer do anything there - only
    -- gs.next_hunk/gs.prev_hunk (:Gitsigns next_hunk/prev_hunk) work.
    -- Rather than trust vim.wo.diff, actually try the diff motion and check
    -- whether the cursor moved; if it didn't, fall back to gitsigns.
    local function diff_jump(motion, hunk_fn)
      return function()
        if vim.wo.diff then
          local before = vim.api.nvim_win_get_cursor(0)
          pcall(vim.cmd, 'normal! ' .. motion)
          local after = vim.api.nvim_win_get_cursor(0)
          if before[1] == after[1] and before[2] == after[2] then
            hunk_fn()
          end
          return
        end
        hunk_fn()
      end
    end

    local go_to_next_hunk = diff_jump(']c', gs.next_hunk)
    local go_to_prev_hunk = diff_jump('[c', gs.prev_hunk)

    map('n', '<F7>', go_to_next_hunk, { desc = "go to next diff hunk" })
    map('n', '<S-F7>', go_to_prev_hunk, { desc = "go to prev diff hunk" })
    map('n', 'ç', go_to_next_hunk, { desc = "<A-c>: go to next diff hunk" })
    map('n', '∂', go_to_prev_hunk, { desc = "<A-d>: go to prev diff hunk" })

    -- Actions

    -- -- stage, unstage, reset
    -- map('n', '<leader>hs', gs.stage_hunk, { desc = "Stage hunk" })
    -- map('n', '<leader>hu', gs.undo_stage_hunk, { desc = "Unstage hunk" })
    map('n', '<leader>hr', gs.reset_hunk, { desc = "Reset hunk" })

    -- burde kanskje brukt "il" som inside line
    -- map('n', '<leader>ls', "V:Gitsigns stage_hunk", { desc = "Stage line" })
    -- map('n', '<leader>lu', "V:Gitsigns undo_stage_hunk", { desc = "Unstage line" })
    -- map('n', '<leader>lr', "V:Gitsigns reset_hunk", { desc = "Reset line" })

    -- map('v', '<leader>hs', function() gs.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end, { desc = "Stage hunk" })
    map('v', '<leader>hr', function() gs.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end, { desc = "Reset hunk" })

    -- map('n', '<leader>bS', gs.stage_buffer, { desc = "Stage buffer" }) -- Commented out: More or less same as Fugitive's :Gwrite
    -- map('n', '<leader>bR', gs.reset_buffer, { desc = "Reset buffer" })

    -- -- view
    -- map('n', '<leader>hp', gs.preview_hunk_inline, { desc = "Preview hunk" })
    map('n', '<leader>hp', gs.preview_hunk, { desc = "Preview hunk" })
    map('n', '<leader>hb', function() gs.blame_line { full = true } end)
    map('n', '<leader>tb', ':Gitsigns blame_line<CR>', { desc = "Show git blame popup (Gitsigns)" })
    -- map('n', '<leader>tbb', gs.toggle_current_line_blame, { desc = "Show git blame on line (Gitsigns)" }) -- samme som over og under? sjekk
    map('n', '<leader>hd', gs.diffthis)
    map('n', '<leader>hD', function() gs.diffthis('~') end, { desc = "Diffthis 2" })
    map('n', '<leader>td', gs.toggle_deleted, { desc = "Show deleted" })

    -- Text object
    map({ 'v', 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}



-- local function blame_and_checkout()
--     local gs = require('gitsigns')
--     gs.blame_line({ full = true }) -- Get full blame info
--     vim.defer_fn(function()
--         -- Get commit hash from last blame message
--         local blame_msg = vim.fn.getreg('"') -- Default unnamed register (last yank)
--         local commit_hash = blame_msg:match("(%w+)%s") -- Extract first word (commit hash)

--         if commit_hash then
--             -- Copy hash to system clipboard
--             vim.fn.setreg("+", commit_hash) -- Clipboard register
--             vim.fn.setreg('"', commit_hash) -- Default register

--             -- Ask to checkout commit
--             local choice = vim.fn.input("Checkout commit " .. commit_hash .. "? (y/n): ")
--             if choice:lower() == "y" then
--                 vim.cmd("Git checkout " .. commit_hash) -- Use Fugitive or !git checkout
--             else
--                 print("Copied hash: " .. commit_hash)
--             end
--         else
--             print("Could not extract commit hash.")
--         end
--     end, 400) -- Slight delay to allow blame to populate
-- end

-- Map it to a keybinding
-- vim.keymap.set("n", "<leader>tbc", blame_and_checkout, { noremap = true, silent = true })
