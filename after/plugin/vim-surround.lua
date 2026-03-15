-- example: word
vim.cmd [[
"                                "word"
let g:surround_{char2nr("c")} = "\"\r\""

"                                'word'
let g:surround_{char2nr("C")} = "'\r'"

"                                ```
"                                word
"                                ```
autocmd FileType markdown let b:surround_{char2nr("v")} = "```\n \r \n```"

autocmd FileType markdown let b:surround_{char2nr("i")} = "*\r*"
autocmd FileType markdown let b:surround_{char2nr("f")} = "**\r**"
]]










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
