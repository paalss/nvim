vim.keymap.set("n", "<leader><leader>as", ":AutoSession save \" ", { desc = "Saves a session based on the `cwd` in `root_dir`" })
vim.keymap.set("n", "<leader><leader>ad", ":AutoSession deletePicker", { desc = "Opens a vim.ui.select picker to choose a session to delete" })
vim.keymap.set("n", "<leader><leader>ar", ":AutoSession restore", { desc = "restores a session based on the `cwd` from `root_dir`" })

-- https://github.com/rmagatti/auto-session/blob/main/doc/auto-session.txt
--
--     :AutoSession save " saves a session based on the `cwd` in `root_dir`
--     :AutoSession save my_session " saves a session called `my_session` in `root_dir`
--
--     :AutoSession restore " restores a session based on the `cwd` from `root_dir`
--     :AutoSession restore my_session " restores `my_session` from `root_dir`
--     :AutoSession disable " disables autosave
--     :AutoSession enable " enables autosave (still does all checks in the config)
--     :AutoSession toggle" toggles autosave
--    
--     :AutoSession purgeOrphaned " removes all orphaned sessions with no working directory left.
--    
--     :AutoSession search " opens a session picker, see Config.session_lens.picker
--     :" 
