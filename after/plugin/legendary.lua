require('legendary').setup({
  lazy_nvim = { auto_register = true },
  keymaps = { {
    '<leader>legend',
    function()
      print("LEGENDARY")
    end,
    description = "Say legendary"
  } }
})
