
function Ahk()
    print("Starting autohotkey")
    vim.fn.jobstart('timeout 0.1s bash autohotkey/start-ahk.sh')
end

Ahk()
