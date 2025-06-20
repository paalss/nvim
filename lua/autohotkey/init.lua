function Ahk()
    print("Starting autohotkey")
    vim.fn.jobstart('timeout 0.1s bash ~/start-ahk.sh')
end
