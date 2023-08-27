
function Ahk()
    print("Starting autohotkey")
    vim.fn.jobstart('timeout 0.1s bash lua/autohotkey/start-ahk.sh')
end

Ahk()
