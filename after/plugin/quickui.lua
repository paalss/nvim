vim.cmd [[


" &Menu = press m to pick
" M&enu = press e to pick
" [ "&Menu item", "Function", "Hover-tip"]

" clear all the menus
call quickui#menu#reset()

" install a 'File' menu, use [text, command] to represent an item.
call quickui#menu#install('&File', [
            \ [ "&New File\tCtrl+n", 'echo 0' ],
            \ [ "&Open File\t(F3)", 'echo 1' ],
            \ [ "&Close", 'echo 2' ],
            \ [ "--", '' ],
            \ [ "&Save\tCtrl+s", 'echo 3'],
            \ [ "Save &As", 'echo 4' ],
            \ [ "Save All", 'echo 5' ],
            \ [ "--", '' ],
            \ [ "E&xit\tAlt+x", 'echo 6' ],
            \ ])

" items containing tips, tips will display in the cmdline
call quickui#menu#install('&Edit', [
            \ [ '&Copy', 'echo 1', 'tip 1' ],
            \ [ '&Paste', 'echo 2', 'tip 2' ],
            \ [ '&Find', 'echo 3', 'tip 3' ],
            \ ])

" script inside %{...} will be evaluated and expanded in the string
call quickui#menu#install("&Option", [
			\ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!'],
			\ ['Set &Cursor Line %{&cursorline? "Off":"On"}', 'set cursorline!'],
			\ ['Set &Paste %{&paste? "Off":"On"}', 'set paste!'],
			\ ])

" register HELP menu with weight 10000
call quickui#menu#install('H&elp', [
			\ ["&Cheatsheet", 'help index', ''],
			\ ['T&ips', 'help tips', ''],
			\ ['--',''],
			\ ["&Tutorial", 'help tutor', ''],
			\ ['&Quick Reference', 'help quickref', ''],
			\ ['&Summary', 'help summary', ''],
			\ ], 10000)

call quickui#menu#install('&Git', [
			\ ['&Compare with master', 'DiffviewOpen master'],
			\ ], 10000)

call quickui#menu#install('E&xplore', [
			\ ['&Netrw explore', 'Ex', 'SPC vv'],
			\ ['&Neotree', 'Neotree toggle reveal float', 'Alt r'],
			\ ], 10000)

" enable to display tips in the cmdline
let g:quickui_show_tip = 1
]]


vim.keymap.set("n", "<A-s>", ":call quickui#menu#open()<CR>", { desc = "Open menu (Quickui)" })

