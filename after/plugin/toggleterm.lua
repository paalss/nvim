local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end
--
-- 248 = øåæ
--
-- husk at, om du ikke får til å lukke terminal med samme command som du åpnet med,
-- så må du exite og åpne denne fila på nytt 
-- er ofte ikke nok å :w og :so

toggleterm.setup({
    open_mapping = [[<F7>]], -- ok
    -- open_mapping = "<F7>", -- ok
    -- open_mapping = "<A-l>", -- ok
    -- open_mapping = "<C-l>", -- ok
    -- open_mapping = "<A-ø>", -- ok
    -- open_mapping = "<A-Char-248>", -- ok

    -- open_mapping = "<C-ø>", -- fail

    -- open_mapping = "<C-[>", -- fail, men nesten! det er for bokstaven Å! Og så vil denne få ESC til å åpne terminal også.... :/
    -- open_mapping = "<C-o/>", -- fail
    -- open_mapping = [[<C-\>]], -- fail. finner ikke hvilken tast
    -- open_mapping = "<C-]>", -- fail. finner ikke hvilken tast som tilsvarer ]

    -- open_mapping = "<C-Char-248>", -- fail
    direction = "float"
})
