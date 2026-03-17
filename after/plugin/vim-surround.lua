-- example: word
vim.cmd [[
"                                "word"
let g:surround_{char2nr("c")} = "\"\r\""

"                                'word'
let g:surround_{char2nr("C")} = "'\r'"

"                                ```
"                                word
"                                ```
autocmd FileType markdown let b:surround_{char2nr("v")} = "```sh\n \r \n```"

autocmd FileType markdown let b:surround_{char2nr("i")} = "*\r*"
autocmd FileType markdown let b:surround_{char2nr("f")} = "**\r**"
]]



-- Fork: tomtomjhj/vim-surround
--    https://github.com/tomtomjhj/vim-surround/tree/delete-custom

-- Open PR: Support deleting/changing custom surrounds
--    tomtomjhj - 4. jun 2022
--    https://github.com/tpope/vim-surround/pull/355
--    fixes
--       issue: Why are some matches a one way street? #199
--          https://github.com/tpope/vim-surround/issues/199
--       issue: deleting custom surrounds #210
--          https://github.com/tpope/vim-surround/issues/210
--       issue: Undo a custom surround? #318
--          https://github.com/tpope/vim-surround/issues/318
--       issue: How to apply custom mappings to ds, (ys works) #346
--          https://github.com/tpope/vim-surround/issues/346

-- Issue: Custom surroundings don't work with cs or ds #329
--    hbarcelos - 14. jul 2021
--    https://github.com/tpope/vim-surround/issues/329
--    https://github.com/tpope/vim-surround/issues/329#issuecomment-922978875







-- lorem ipsum dolor sit amet bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla


---------------------------------------------------

-- -- character list with ascii codes:
-- -- https://www.ascii-code.com/
--
-- -- example: word
-- vim.cmd [[
--   " 8 (56) --> <?php word ?>
--   let g:surround_56 = "<?php \r ?>"
--
--   " c (99) -->  "word"
--   let g:surround_99 = "\"\r\""
--
--   " C (67) -->  'word'
--   let g:surround_67 = "'\r'"
--
--   autocmd FileType php let b:surround_{char2nr("8")} = "<?php \r ?>"
-- ]]
