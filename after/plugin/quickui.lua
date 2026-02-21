vim.cmd [[

" &Menu = press m to pick
" M&enu = press e to pick
" [ "&Menu item", "Function", "Hover-tip"]

" clear all the menus
call quickui#menu#reset()

" script inside %{...} will be evaluated and expanded in the string

" call quickui#menu#install("&File", [
"       \ [ "Save and quit\tZZ", "ZZ" ],
"       \ [ "--", "" ],
" 			\ ])

call quickui#menu#install("&Set", [
      \ [ "AutoHotKey\tSPC ahk", "lua Ahk()", "Turn on AutoHotKey" ],
      \ [ "--", "" ],
      \ [ "Set", "" ],
			\ ["&Relative number %{&relativenumber? 'Off':'On'}\t---", "set relativenumber!", "set relativenumber!"],
			\ ])


""      \ [ "--", "" ],
""      \ [ "Abort commit", "" ],
""      \ [ "&Normal\tSPC dca", "gg/#<CR>kdgg:q!<CR>", "Abort normal commit" ],
""      \ [ "&Force\tSPC SPC dca", "gg/#<CR>Vggy:cq<CR>", "Abort merge/amend/etc. commit" ],
""      \ [ "--", "" ],

call quickui#menu#install('C&ompare', [
      \ [ "Compare with", "" ],
			"\ ["A branch ...(type)\tSPC df", "lua open_diffview()", "Compare with branch..."],
			\ ["Ma&ster\tSPC SPC mas", "DiffviewOpen origin/master", "Compare with master"],
			\ ["Ma&in\tSPC SPC mai", "DiffviewOpen origin/main", "Compare with main"],
			\ ["&Develop\tSPC SPC dev", "DiffviewOpen origin/develop", "Compare with develop"],
			\ ["D&evelop\tSPC SPC SPC dev", "DiffviewOpen origin/HEAD...HEAD --imply-local", "Compare with origin"],
      \ [ "--", "" ],
      \ [ "History", "" ],
      \ [ "&Repo history\tSPC dlo", "DiffviewFileHistory", "Show commit history for entire repository" ],
      \ [ "&File history\tSPC dlgp", "DiffviewFileHistory %", "Show commit history for current file"],
			"\ ["Show history", "Dh", "Show commit history for visual selection"], funker ikke for visual selection: går automatisk til normal mode når man prøver dette virker det som
			\ ], 10000)

call quickui#menu#install('E&xplore', [
			\ ["Find files\tCTRL p", "Telescope find_files", "Telescope find_files"],
			\ ["&Cheatsheet", 'help index', 'help index'],
			\ ['T&ips', 'help tips', 'help tips'],
			\ ['--',''],
			\ ["&Tutorial", 'help tutor', 'help tutor'],
			\ ['&Quick Reference', 'help quickref', 'help quickref'],
			\ ['&Summary', 'help summary', 'help summary'],
			\ ], 10000)

" enable to display tips in the cmdline
let g:quickui_show_tip = 1
]]


vim.keymap.set({"n", "v"}, "<A-s>", ":call quickui#menu#open()<CR>", { desc = "Open menu (Quickui)" })
