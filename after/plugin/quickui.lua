vim.cmd [[

" &Menu = press m to pick
" M&enu = press e to pick
" [ "&Menu item", "Function", "Hover-tip"]

" clear all the menus
call quickui#menu#reset()

" script inside %{...} will be evaluated and expanded in the string

call quickui#menu#install("&Option", [
      \ [ "Set", "" ],
			\ ["&Paste %{&paste? 'Off':'On'}\tSPC sto", "set paste!","%{&paste? 'Turn on for coding':'Turn on for pasting from OS registry'}"],
			\ ["&Relative number %{&relativenumber? 'Off':'On'}\t---", "set relativenumber!"],
			\ ["&Colorcolumn On\tSPC sco", "set colorcolumn=80"],
			\ ["C&olorcolumn Off\tSPC sclo", "set colorcolumn="],
      \ [ "--", "" ],
      \ [ "Telescope", "" ],
			\ ["Colo&rscheme\tSPC scr", 'Telescope colorscheme'],
			\ ])

" G commit --verbose --amend --no-edit --all
call quickui#menu#install('&Git', [
      \ [ "Amend commit", "" ],
      \ [ "gc!", "G commit --verbose --amend", "git commit --verbose --amend" ],
      \ [ "gcn!", "G commit --verbose --amend --no-edit", "git commit --verbose --amend --no-edit" ],
      \ [ "gcan!", "G commit --verbose --amend --no-edit --all", "git commit --verbose --amend --no-edit --all" ],
      \ [ "--", "" ],
      \ [ "Abort commit", "" ],
      \ [ "&Normal\tSPC dca", "gg/#<CR>kdgg:q!<CR>", "Abort normal commit" ],
      \ [ "&Force\tSPC SPC dca", "gg/#<CR>Vggy:cq<CR>", "Abort merge/amend/etc. commit" ],
      \ [ "--", "" ],
      \ [ "Compare with", "" ],
			\ ["Ma&ster\tSPC dy", "DiffviewOpen master", "Compare with master"],
			\ ["Ma&in\tSPC dr", "DiffviewOpen main", "Compare with main"],
			\ ["&Develop\tSPC dt", "DiffviewOpen develop", "Compare with develop"],
      \ [ "--", "" ],
      \ [ "History", "" ],
      \ [ "&Repo history\tSPC dlo", "DiffviewFileHistory", "Show commit history for entire repository" ],
      \ [ "&File history\tSPC dlgp", "DiffviewFileHistory %", "Show commit history for current file"],
			\ ], 10000)

call quickui#menu#install("E&dit", [
      \ ["Indent", ""],
      \ ["&Right\t>>", ">>", "Indent right"],
      \ ["&Left\t<<", "<<", "Indent left"],
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
