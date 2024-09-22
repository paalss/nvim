vim.cmd [[

" &Menu = press m to pick
" M&enu = press e to pick
" [ "&Menu item", "Function", "Hover-tip"]

" clear all the menus
call quickui#menu#reset()

" script inside %{...} will be evaluated and expanded in the string

call quickui#menu#install("&Option", [
			\ ["Set &Paste %{&paste? 'Off':'On'}\tSPC sto", "set paste!","%{&paste? 'Turn on for coding':'Turn on for pasting from OS registry'}"],
			\ ])

" -- vim.keymap.set("n", "<leader>dlo", ":DiffviewFileHistory<CR>", { desc = "Show commit history (Diffview)" })
call quickui#menu#install('&Git', [
      \ [ "&Compare with", "" ],
			\ ["Ma&ster\tSPC dy", "DiffviewOpen master"],
			\ ["Ma&in\tSPC dr", "DiffviewOpen main"],
			\ ["&Develop\tSPC dt", "DiffviewOpen develop"],
      \ [ "--", "" ],
      \ [ "&History", "" ],
      \ [ "&Repo history\tSPC dlo", "DiffviewFileHistory", "Show commit history for entire repository" ],
      \ [ "File history\tSPC dlgp", "DiffviewFileHistory %", "Show commit history for current file"],
			\ ], 10000)

call quickui#menu#install('E&xplore', [
			\ ["&Netrw explore\tSPC vv", "Ex"],
			\ ["&Neotree\tAlt r", "Neotree toggle reveal float"],
			\ ], 10000)

" register HELP menu with weight 10000
call quickui#menu#install('H&elp', [
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
