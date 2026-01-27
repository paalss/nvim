vim.lsp.config('luals', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'.luarc.json', '.luarc.jsonc'},
})

-- Set configuration for typescript language server
vim.lsp.config('ts_ls', {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
})

vim.lsp.enable('luals')
vim.lsp.enable('ts_ls')

-- andre forsøk
--
-- vim.lsp.config('tsserver', {
--   cmd = {'typescript-language-server'},
--   filetypes = {'js', 'ts', 'jsx', 'tsx'},
--   root_markers = {},
-- })

-- vim.lsp.config('js', {
--   cmd = {'javascript-language-server'},
--   filetypes = {'js', 'jsx'},
--   root_markers = {'.luarc.json', '.luarc.jsonc'},
-- })

-- vim.lsp.enable('tsserver')
-- vim.lsp.enable('js')
