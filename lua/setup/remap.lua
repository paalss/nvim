-- shortcuts/typing

-- https://neovim.io/doc/user/options.html#%27langmap%27
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-2>", "@", { desc = "At" })
vim.keymap.set({ "i", "v", "x", "o", "t", "!" }, "<A-3>", "~", { desc = "Tilde" })
vim.keymap.set({ "n" }, "<A-3>", "~", { desc = "Tilde" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-4>", "$", { desc = "Dollar sign" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-5>", "%", { desc = "Percent" })
vim.keymap.set({ "n", "i", "v", "x", "o", "t", "!" }, "<A-|>", "`", { desc = "Bactick" })
-- vim.keymap.set("x", "|", "'", { desc = "single quote" }) -- funker ikke. i hvert fall ikke i insert mode


--------------------------------------------------------
-- BASIC ACTIONS
--------------------------------------------------------

-- escape
vim.keymap.set({ "i", "s" }, "jk", "<esc>", { desc = "Escape" })
vim.keymap.set({ "i", "s" }, "JK", "<esc>:echo 'CAPS LOCK!'<CR>", { desc = "Escape" })
vim.keymap.set({ "i", "s" }, "<esc>", "<esc>:echo 'You can also type \"jk\" quickly to return to normal mode!'<CR>",
  { desc = "Semi-disable esc-button" })
vim.keymap.set("v", "<leader>jk", "<esc>", { desc = "Escape" })

vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Write/save" })
vim.keymap.set("n", "<leader>W", ":wa<CR>", { desc = "Write all files" })
vim.keymap.set("n", "<leader>so", ":so<CR>", { desc = "Source file" })

-- vim.keymap.set({"n", "v"}, "<A-h>", "0", { desc = "Go to beginning of line" }) -- <A-h>
-- vim.keymap.set({"n", "v"}, "<A-l>", "$", { desc = "Go to end of line" }) -- <A-l>

vim.keymap.set({ "n", "v" }, "gh", "0", { desc = "Go to beginning of line" })
vim.keymap.set({ "n", "v" }, "gl", "$", { desc = "Go to end of line" })

vim.keymap.set("n", "<leader>g", "%", { desc = "%" })
vim.keymap.set("n", "<leader>c", "\"", { desc = "double quote" })
vim.keymap.set("n", "<leader>x", "@", { desc = "@" })

-- -- indenting
vim.keymap.set("n", "<tab>", ">>", { desc = "add indent" })
vim.keymap.set("n", "<S-tab>", "<<", { desc = "remove indent" })
vim.keymap.set("v", "<tab>", ">gv", { desc = "add indent" })
vim.keymap.set("v", "<S-tab>", "<gv", { desc = "remove indent" })
vim.keymap.set("n", "<<", "<nop>", { desc = "Disable << indent" })
vim.keymap.set("n", ">>", "<nop>", { desc = "Disable >> indent" })
vim.keymap.set("v", "<<", "<nop>", { desc = "Disable << indent" })
vim.keymap.set("v", ">>", "<nop>", { desc = "Disable >> indent" })


--------------------------------------------------------
-- LINE MANAGEMENT
--------------------------------------------------------


-- MOVE LINE

vim.keymap.set("n", "<A-k>", ":m-2<CR>", { desc = "Move line up" })
vim.keymap.set("n", "<A-j>", ":m+<CR>", { desc = "Move line down" })


-- MOVE LINES

vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line(s) up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line(s) down" })


-- ADD NEW LINE

vim.keymap.set("n", "<leader>o", "o<esc>", { desc = "add new line below" })
vim.keymap.set("n", "<leader>O", "O<esc>", { desc = "add new line above" })


--------------------------------------------------------
-- LSP
--------------------------------------------------------

-- Remove global default key mapping -- error on `:so`?
-- vim.keymap.del("n", "grn")
-- vim.keymap.del("n", "gra")
-- vim.keymap.del("n", "grr")
-- vim.keymap.del("n", "gri")
-- vim.keymap.del("n", "gO")

-- vim.keymap.del("n", "grt")
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to implementation" })
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Go to declaration" })
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to implementation" })
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Find references" })

-- lsp features
-- vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })
-- vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Go to definition" })
-- vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to definition" })
-- vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Go to definition" })
-- vim.keymap.del("n", "grr")

-- vim.keymap.set("n", "gd", "gri", { desc = "Go to definition" })
-- vim.keymap.set("n", "gr", "grr", { desc = "See references/usages", remap = false })
-- vim.keymap.set("n", "gri", "<nop>", { desc = "", remap = false })
-- vim.keymap.del("n", "gra")
-- vim.keymap.del("n", "gri")
-- vim.keymap.del("n", "grn")
-- vim.keymap.del("n", "grr")
-- vim.keymap.del("n", "grt")
-- vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to implementation" })
-- vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })
-- vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Go to declaration" })
-- vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Go to references" })
-- vim.keymap.set("n", "gR", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename" })


--------------------------------------------------------
-- OPERATOR PENDING
--------------------------------------------------------

-- c -> "
vim.keymap.set("o", "ic", "i\"", { desc = "Inside \"" })
vim.keymap.set("o", "ac", "a\"", { desc = "Around \"" })
vim.keymap.set("v", "ic", "i\"", { desc = "Inside \"" })
vim.keymap.set("v", "ac", "a\"", { desc = "Around \"" })

-- C -> '
vim.keymap.set("o", "iC", "i\'", { desc = "Inside \'" })
vim.keymap.set("o", "aC", "a\'", { desc = "Around \'" })
vim.keymap.set("v", "iC", "i\'", { desc = "Inside \'" })
vim.keymap.set("v", "aC", "a\'", { desc = "Around \'" })

-- r -> [ ("r" er brukt som surround-shortcut til "[" i tpope/vim-surround) Se github.com/tpope/vim-surround ---> plugin/surround.vim ---> let pairs = "b()B{}r[]a<>"
vim.keymap.set("o", "ir", "i[", { desc = "Inside [" })
vim.keymap.set("o", "ar", "a[", { desc = "Around [" })
vim.keymap.set("v", "ir", "i[", { desc = "Inside [" })
vim.keymap.set("v", "ar", "a[", { desc = "Around [" })

-- "operator pending ish"

-- -- entire file
-- -- -- example: d, c, y, v,
vim.keymap.set("o", ",", ":normal! ggVG<CR>", { desc = "Entire buffer" })
vim.keymap.set("n", "y,", ":%y<CR>", { desc = "yank entire buffer" })
vim.keymap.set("n", "<leader>vy,", ":%y+<CR>", { desc = "yank entire buffer to OS registry" })
vim.keymap.set("v", ",", ":normal! ggVG<CR>", { desc = "select entire buffer" })

-- vim.keymap.set("o", ",", function()
-- vim.cmd.normal("gg0VG")
-- if vim.fn.mode() == 'd' then
-- end, { desc = "Entire buffer" })

-- -- entire line
-- -- -- example: yaab, daab, vaab
-- vim.keymap.set("o", "aab", ":normal! vabV<CR>", { desc = "Line related to `(`" })
vim.keymap.set("o", "aab", ":normal! vabV<CR>", { desc = "Line related to `(`" })
vim.keymap.set("v", "aab", ":normal! vabV<CR>", { desc = "Select line related to `(`" })

vim.keymap.set("o", "aaB", ":normal! vaBV<CR>", { desc = "Line related to `{`" })
vim.keymap.set("v", "aaB", ":normal! vaBV<CR>", { desc = "Select line related to `{`" })

vim.keymap.set("o", "aac", ":normal! va[V<CR>", { desc = "Line related to `[`" })
vim.keymap.set("v", "aac", ":normal! va[V<CR>", { desc = "Select line related to `[`" })

vim.keymap.set("o", "aat", ":normal! vatV<CR>", { desc = "Line related to `<tag></tag>`" })
vim.keymap.set("v", "aat", ":normal! vatV<CR>", { desc = "Select line related to `<tag></tag>`" })

-- vim.keymap.set("o", "lv", ":normal! va\"V<CR>", { desc = "Line related to `\"`" })
-- vim.keymap.set("o", "lV", ":normal! va\'V<CR>", { desc = "Line related to `\'`" })

-- self closing tag
-- vim.keymap.set("o", "et", ":<c-u>:normal! ?<<CR>v/\\/><CR>", { desc = "Select self closing tag" })
-- vim.keymap.set("o", "st", "", { desc = "selfclosingtag" })

-- mac: self closing functionality fungerer bare når nvim er i tmux?? Det samme gjelder vanlig vim. Dette skjønner jeg ikke
-- men på WSL fungerer det
-- 26-02-21: WSL: ok det fungerer ikke helt i WSL heller
vim.cmd [[
function! JSXIsSelfCloseTag(mode)
  let l:line_number = line(".")
  let l:line = getline(".")
  let l:tag_name = matchstr(matchstr(line, "<\\w\\+"), "\\w\\+")

  exec "normal! 0f<vat\<esc>"

  cal cursor(line_number, 1)

  let l:selected_text = join(getline(getpos("'<")[1], getpos("'>")[1]))

  let l:match_tag = matchstr(matchstr(selected_text, "</\\w\\+>*$"), "\\w\\+")

  return tag_name != match_tag
endfunction

function! JSXSelectTag(mode)
  if JSXIsSelfCloseTag(a:mode)
    if a:mode == "v"
      exec "normal! \<esc>0f<v/\\/>$\<cr>l"
    else
      exec "normal! \<esc>0f<v/\\/>$\<cr>l" . a:mode
    endif
  else
    exec "normal! \<esc>0f<" . a:mode . "at"
  end
endfunction

nnoremap <leader><leader>vat :call JSXSelectTag("v")<CR>
nnoremap <leader><leader>yat :call JSXSelectTag("y")<CR>
nnoremap <leader><leader>dat :call JSXSelectTag("d")<CR>
nnoremap <leader><leader>cat :call JSXSelectTag("v")<CR>c
]]



--------------------------------------------------------
-- YANKING, DELETING & PASTING
--------------------------------------------------------

-- NAVIGATE YANKED REGION

vim.keymap.set("v", "y", "ygv<esc>", { desc = "Yank (keep cursor in place)" })
vim.keymap.set("v", "p", "\"_P", { desc = "Paste without losing copied text" })
vim.keymap.set("v", "P", "\"_Po<esc>", { desc = "Paste without losing copied text" })


-- TOGGLE

vim.keymap.set("n", "<leader>u", ":set paste! paste?<CR>", { desc = "Toggle set paste" })
vim.keymap.set("n", "<leader>y", ":set swapfile! swapfile?<CR>", { desc = "Toggle set swapfile" })


-- REGISTERS

vim.keymap.set("n", "c", "\"_c", { desc = "Change without saving deleted text" })
vim.keymap.set("n", "C", "\"_C", { desc = "Change without saving deleted text" })
vim.keymap.set("n", "x", "\"_x", { desc = "Change without saving deleted text" })
vim.keymap.set("v", "p", "\"_dP", { desc = "Paste without saving deleted text" })
vim.keymap.set("v", "P", "\"_dp", { desc = "Paste without saving deleted text" })

vim.keymap.set("n", "<leader>S", ":let @s = @*<CR>", { desc = "Save last paste item to 's'-registry " })
vim.keymap.set("n", "<leader>L", "\"sp", { desc = "Paste from 's'-registry" })

vim.keymap.set({ "n", "v" }, "<leader>v", "\"+", { desc = "OS registry" })
vim.keymap.set("v", "<leader>vp", "\"+p", { desc = "Paste from OS registry" })
vim.keymap.set("v", "<leader>vP", "\"+P", { desc = "Paste from OS registry" })
-- vim.keymap.set({ "n", "v" }, "<C-s>", "\"s", { desc = "Use 's' register" })

-- -- black hole
vim.keymap.set({ "n", "v" }, "_", "\"_", { desc = "Use black hole register" })


--------------------------------------------------------
-- CORRECT NORWEGIAN CHARACTERS
--------------------------------------------------------

vim.keymap.set("n", "<leader>corr", ":%s/├Ñ/å/g<CR>:%s/├╕/ø/g<CR>:%s/├ª/æ/g<CR>", { desc = "Correct æøå" })
vim.keymap.set("n", "<leader>cæ", ":%s/├ª/æ/g<CR>", { desc = "Correct æ" })
vim.keymap.set("n", "<leader>cø", ":%s/├╕/ø/g<CR>", { desc = "Correct ø" })
vim.keymap.set("n", "<leader>cå", ":%s/├Ñ/å/g<CR>", { desc = "Correct å" })


--------------------------------------------------------
-- AUTOCORRECT
--------------------------------------------------------

vim.cmd [[iabbrev locaing loading]]
vim.cmd [[iabbrev timezpne timezone]]


--------------------------------------------------------
-- SNIPPETS
--------------------------------------------------------

-- vim.keymap.set("n", "<leader>colu", ":read ~/.config/nvim/snippets/columns.html<CR>", { desc = " Add HTML columns" })


--------------------------------------------------------
-- TRANSLATION
--------------------------------------------------------

-- SELECT NEXT TRANSLATION

vim.keymap.set("n", "<leader>tt", "/__STRING<CR>vi\"", { desc = "Select next translation" })
vim.keymap.set("v", "<leader>tt", "<esc>/__STRING<CR>vi\"", { desc = "Select next translation (from visual mode)" })
vim.keymap.set("v", "<C-a>", "<esc>/__STRING<CR>vi\"", { desc = "Select next translation (from visual mode)" })
vim.keymap.set("i", "<C-a>", "<esc>/__STRING<CR>vi\"", { desc = "Select next translation (from insert mode)" })


-- POPULATE TRANSLATION WITH KEY

vim.keymap.set("v", "<C-x>", "<esc>F\";yi\"f\";vi\"pgvu~gv:s/\\%V_/ /g<CR>", { desc = "Populate translation with key" }) -- "TRANSLATION_KEY_HERE": "Translation key here"


-- SELECT NEXT TRANSLATION AND ACTION

vim.keymap.set("n", "<leader>tx", "/__STRING<CR>F\";yi\"f\";vi\"pgvu~gv:s/\\%V_/ /g<CR>",
  { desc = "Select next translation and populate with key" })
vim.keymap.set("n", "<leader>tr", "/__STRING<CR>\"_ci\"", { desc = "Type next Translation" }) -- "TRANSLATION_KEY_HERE": ""


--------------------------------------------------------
-- FORMATTING
--------------------------------------------------------

-- vim.keymap.set("n", "<leader><leader>prett", ":! npx prettier . --write", { desc = "Format with prettier" })

vim.keymap.set("n", "<leader>fo", function()
  vim.lsp.buf.format()
end, { desc = "lsp format" })


--------------------------------------------------------
-- QUICKFIX LIST
--------------------------------------------------------

vim.keymap.set("n", "<leader>cop", ":botright copen<CR>", { desc = "Open quickfix list" }) --botright: open at the bottom even if noneckpain is on
vim.keymap.set("n", "<leader>ccl", ":ccl<CR>", { desc = "close quickfix list" })


-- QUICK FIX LIST NAVIGATION

vim.keymap.set("n", "<down>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<up>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<leader><down>", "<cmd>cnfile<CR>", { desc = "Next file" })
vim.keymap.set("n", "<leader><up>", "<cmd>cpfile<CR>", { desc = "Prev file" })
-- vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


--------------------------------------------------------
-- GIT
--------------------------------------------------------

vim.keymap.set("n", "<leader>dca", "gg/#<CR>kdgg:w<CR>:q!<CR>",
  { desc = "Abort git commit (does not work with amended commits, they will still commit for some reason)" })
vim.keymap.set("n", "<leader><leader>dca", "gg/#<CR>Vggy:cq<CR>",
  { desc = "Abort everything (amend commits, merge commits etc.)" })
vim.keymap.set("n", "<leader>G", ":! git add %<CR>", { desc = "Stage current file" })


--------------------------------------------------------
-- NAVIGATION
--------------------------------------------------------

-- CODE NAVIGATION

vim.keymap.set({ "n", "v" }, "<C-d>", "23j", { desc = "Scroll page down" })
vim.keymap.set({ "n", "v" }, "<C-u>", "23k", { desc = "Scroll page up" })

vim.keymap.set({ "n", "v" }, "<C-e>", "8j", { desc = "Scroll down" })
vim.keymap.set({ "n", "v" }, "<C-y>", "8k", { desc = "Scroll up" })


-- SEARCH & JUMP-TO

vim.keymap.set({ "n", "v" }, "<leader>n", "/", { desc = "Search forward" })
vim.keymap.set({ "n", "v" }, "<leader><leader>n", "?", { desc = "Search backward" })
vim.keymap.set({ "n", "v" }, "<leader>N", "#*", { desc = "search current word (without jumping)" })


-- SEARCH-REPLACE

-- ikke perfekt, men det er en start
vim.keymap.set("c", "<C-n>", "<CR>:s/<C-r>///g<left><Left>",
  { desc = "Convert first incsearch match to 'Search-replace'" })
vim.keymap.set("n", "<leader><C-n>", ":s/<C-r>//g<Left><Left>",
  { desc = "Turn last search to search-replace (only this line)" })
vim.keymap.set("v", "<leader><C-n>", ":s/<C-r>///g<Left><Left>", { desc = "" })
vim.keymap.set("n", "<leader>,", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
  { desc = "Replace all occurences of word under cursor" })
-- vim.keymap.set("n", "<leader>M", ":s/", { desc = "Search replace mode" })


-- COMPONENT

-- TODO: prettify commands below. Multilines. Maybe use 'function' and 'end' (lua funciton)
vim.keymap.set("n", "<leader>I",
  ":let @a = @/<CR>:execute '/interface ' . expand('%:t:r')<CR>:nohlsearch<CR>:let @/ = @a<CR>",
  { desc = "Jump to main component's interface" })
vim.keymap.set("n", "<leader>C",
  ":let @a = @/<CR>:execute '/const ' . expand('%:t:r')<CR>0WW:nohlsearch<CR>:let @/ = @a<CR>",
  { desc = "Jump to main component" })
vim.keymap.set("n", "<leader>R", ":let @a = @/<CR>:execute '/classes.root'<CR>:let @/ = @a<CR>",
  { desc = "Jump to main return" })


-- GIT NAVIGATION

-- see gitsigns.lua


-- FILE NAVIGATION

-- vim.keymap.set("n", "<leader><leader>vv", vim.cmd.Ex)


--------------------------------------------------------
-- PANE MANAGEMENT
--------------------------------------------------------

-- navigate panes
-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- resize panes
vim.keymap.set("n", "<C-Up>", "<cmd>resize -4<CR>", { desc = "Resize split up" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +4<CR>", { desc = "Resize split down" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -4<CR>", { desc = "Resize split left" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +4<CR>", { desc = "Resize split right" })

-- add colorcolumn only for commit messages
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "COMMIT_EDITMSG",
  callback = function()
    vim.schedule(function()
      vim.opt_local.colorcolumn = "73" -- indicating where text needs to wrap
    end)
  end,
})


--------------------------------------------------------
-- OTHER
--------------------------------------------------------

vim.keymap.set("n", "<leader>m", "@w", { desc = "Replay 'w'-macro" })
vim.keymap.set("n", "-", "@w", { desc = "Replay 'w'-macro" })
vim.keymap.set("n", "<C-s>", ":echo 'denne shortcutten er ledig!'<CR>", { desc = "available shortcut" })
vim.keymap.set("n", "<esc>", ":nohlsearch<CR>", { desc = "Remove search highlights" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Remove lines below, keep cursor in place" })
vim.keymap.set("n", "<leader>pt", ":echo expand('%:p')<CR>", { desc = "Print path to current file" })

-- vim.keymap.set("n", '<leader>ypt', [[<Cmd>let @+ = expand('%:p')<CR>]],
--   { desc = "Yank path to current file", noremap = true, silent = true })
-- vim.keymap.set("i", "<C-c>", "<Esc>")                    -- enable same behavior as Esc for escaping vertical edit mode
vim.keymap.set("n", "Q", ":echo 'denne shortcutten er ledig!'<CR>", { desc = "available shortcut" })
vim.keymap.set("n", "X", "<nop>", { desc = "Deactivated" })

vim.keymap.set("n", "<leader><leader>te", ":terminal", { desc = "open terminal" })
-- vim.keymap.set("n", "<leader><leader>trm", ":terminal<CR>:startinsert<CR>", { desc = "Open terminal" })
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")--  FUNKER IKKEEEE! (SE 28:39 I VIDEOEN)
-- vim.keymap.set("n", "<leader>cm", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader><leader>nuke", ":! git reset --hard HEAD && git clean -fd", { desc = "Nuke working tree" })
-- vim.keymap.set("n", "gx", "gx", { desc = "Open link (Netrw)" })
-- vim.keymap.set("n", "n", "nzzzv", { desc = "Go to next occurence" }) -- keep search terms in the middle
-- vim.keymap.set("n", "N", "Nzzzv", { desc = "Go to previous occurence" })
-- vim.keymap.set("n", "<leader>map", ":tab help index<CR>/normal mode<CR>nn28j", { desc = "Find Neovim's default keymaps" })
-- vim.keymap.set("n", "<leader>scroll", ":tab help scrolling<CR>/Scrolling horizontally<CR>nn28j",
--   { desc = "Scrolling help" })
