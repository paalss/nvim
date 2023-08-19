local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end
--
-- husk at, om du ikke får til å lukke terminal med samme command som du åpnet med,
-- så må du exite og åpne denne fila på nytt 
-- er ofte ikke nok å :w og :so

toggleterm.setup({
    open_mapping = "<F7>", -- ok
    direction = "float"
})
