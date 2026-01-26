vim.lsp.config('luals', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'.luarc.json', '.luarc.jsonc'},
})
vim.lsp.config('tsserver', {
  -- cmd = {'lua-language-server'},
  filetypes = {'js', 'ts', 'jsx', 'tsx'},
  root_markers = {},
})


vim.lsp.enable('luals')
