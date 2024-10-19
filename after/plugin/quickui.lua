vim.cmd [[

" &Menu = press m to pick
" M&enu = press e to pick
" [ "&Menu item", "Function", "Hover-tip"]

" clear all the menus
call quickui#menu#reset()

" script inside %{...} will be evaluated and expanded in the string

call quickui#menu#install("&Option", [
			\ ["Set &paste %{&paste? 'Off':'On'}\tSPC sto", "set paste!","%{&paste? 'Turn on for coding':'Turn on for pasting from OS registry'}"],
			\ ["Set &relative number %{&relativenumber? 'Off':'On'}\t---", "set relativenumber!"],
			\ ["Set &colorcolumn On\tSPC sco", "set colorcolumn=80"],
			\ ["Set c&olorcolumn Off\tSPC sclo", "set colorcolumn="],
			\ ])

" -- vim.keymap.set("n", "<leader>dlo", ":DiffviewFileHistory<CR>", { desc = "Show commit history (Diffview)" })
call quickui#menu#install('&Git', [
      \ [ "Compare with", "" ],
			\ ["Ma&ster\tSPC dy", "DiffviewOpen master", "Compare with master"],
			\ ["Ma&in\tSPC dr", "DiffviewOpen main", "Compare with main"],
			\ ["&Develop\tSPC dt", "DiffviewOpen develop", "Compare with develop"],
      \ [ "--", "" ],
      \ [ "History", "" ],
      \ [ "&Repo history\tSPC dlo", "DiffviewFileHistory", "Show commit history for entire repository" ],
      \ [ "&File history\tSPC dlgp", "DiffviewFileHistory %", "Show commit history for current file"],
			\ ], 10000)

call quickui#menu#install('E&xplore', [
			\ ["Find files\tCTRL p", "Telescope find_files", "Find files (Telescope)"],
			\ ["Ne&trw explore\tSPC vv", "Ex"],
			\ ["Ne&otree\tAlt r", "Neotree toggle reveal float"],
			\ ], 10000)

" register HELP menu with weight 10000
call quickui#menu#install('H&elp', [
			\ ["&Keymaps\tTAB", 'Telescope keymaps', 'Show all keymaps (Telescope)'],
			\ ["&Cheatsheet", 'help index', ''],
			\ ['T&ips', 'help tips', ''],
			\ ['--',''],
			\ ["&Tutorial", 'help tutor', ''],
			\ ['&Quick Reference', 'help quickref', ''],
			\ ['&Summary', 'help summary', ''],
			\ ], 10000)

" enable to display tips in the cmdline
let g:quickui_show_tip = 1
]]


vim.keymap.set("n", "<A-s>", ":call quickui#menu#open()<CR>", { desc = "Open menu (Quickui)" })
