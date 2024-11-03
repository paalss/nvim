require('gitsigns').setup {
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation

    local function go_to_next_hunk()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end

    map('n', '<F7>', function()
      go_to_next_hunk()
    end, { desc = "go to next diff hunk - Webstorm", expr = true })

    map('n', '+', function()
      go_to_next_hunk()
    end, { desc = "go to next diff hunk", expr = true })

    map('n', '-', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, { desc = "go to prev diff hunk", expr = true })

    -- Actions

    -- -- stage, unstage, reset
    map('n', '<leader>hs', gs.stage_hunk, { desc = "Stage hunk" })
    map('n', '<leader>hu', gs.undo_stage_hunk, { desc = "Unstage hunk" })
    map('n', '<leader>hr', gs.reset_hunk, { desc = "Reset hunk" })

    map('n', '<leader>ls', "V:Gitsigns stage_hunk", { desc = "Stage line" })
    map('n', '<leader>lu', "V:Gitsigns undo_stage_hunk", { desc = "Unstage line" })
    map('n', '<leader>lu', "V:Gitsigns reset_hunk", { desc = "Reset line" })

    map('v', '<leader>hs', function() gs.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end, { desc = "Stage hunk" })
    map('v', '<leader>hr', function() gs.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end, { desc = "Reset hunk" })

    map('n', '<leader>hS', gs.stage_buffer, { desc = "Stage buffer" })
    map('n', '<leader>hR', gs.reset_buffer, { desc = "Reset buffer" })

    -- -- view
    map('n', '<leader>hp', gs.preview_hunk, { desc = "Preview hunk" })
    map('n', '<leader>hb', function() gs.blame_line { full = true } end)
    map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = "Show git blame on line (Gitsigns)" })
    map('n', '<leader>hd', gs.diffthis)
    map('n', '<leader>hD', function() gs.diffthis('~') end, { desc = "Diffthis 2" })
    map('n', '<leader>td', gs.toggle_deleted)

    -- Text object
    map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}
