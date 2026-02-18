local cmp = require 'cmp'
local luasnip = require 'luasnip'
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

vim.lsp.config('luals', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc' },
})
vim.lsp.enable('luals')

-- Set configuration for typescript language server
vim.lsp.config('ts_ls', {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
})
vim.lsp.enable('ts_ls')


-- vim.lsp.config('html')

-- vim.lsp.config('html', {
--   cmd = { 'vscode-html-langserver', '--stdio' },
--   filetypes = { 'html' },
-- })

-- vim.lsp.enable('html')


-- vim.lsp.config('html', {
--   cmd = { "vscode-html-language-server", "--stdio" }
--   filetypes = { "html" }
--   init_options = {
--     configurationSection = {
--       "html",
--       "css",
--       "javascript"
--     },
--     embeddedLanguages = {
--       css = true,
--       javascript = true
--     }
--   }
--   root_dir = function(fname)
--     return root_pattern(fname) or vim.loop.os_homedir()
--   end,
--   settings = {}
-- })

-- vim.lsp.enable('html')

vim.lsp.config('eslint', {
  settings = {
    useFlatConfig = true,
  },
  filetypes = {
    "javascript", "typescript",
    "typescript.glimmer", "javascript.glimmer",
    "json",
    "markdown"
  },
})
vim.lsp.enable('eslint');



-- return {
--   {
--     "williamboman/mason.nvim",
--     config = function()
--       require("mason").setup()
--     end,
--   },
--   {
--     "williamboman/mason-lspconfig.nvim",
--     config = function()
--       require("mason-lspconfig").setup({
--         ensure_installed = { "lua_ls", "ts_ls", "html", "cssls", "emmet_ls", "gopls", "ltex", "texlab" },
--         handlers = {}
--       })
--     end,
--   },
--   {
--     "neovim/nvim-lspconfig",
--     config = function()
--       local capabilities = require("cmp_nvim_lsp").default_capabilities()
--       vim.lsp.config('*', {
--         capabilities = capabilities,
--       })
--
--       -- 2. ltex mit zusätzlichen Settings konfigurieren
--       vim.lsp.config('ltex', {
--         settings = {
--           ltex = {
--             language = "auto",
--             completionEnabled = false,
--             additionalRules = {
--               enablePickyRules = false,
--               motherTongue = "de-DE"
--             }
--           }
--         }
--       })
--
--       -- 3. Server aktivieren (statt setup)
--       vim.lsp.enable('lua_ls')
--       vim.lsp.enable('ts_ls')
--       vim.lsp.enable('html')
--       vim.lsp.enable('cssls')
--       vim.lsp.enable('emmet_ls')
--       vim.lsp.enable('gopls')
--       vim.lsp.enable('ltex')
--       vim.lsp.enable('texlab')
--
--       -- 4. Keybindings bleiben gleich
--       vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
--       vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
--       vim.keymap.set({ "n", "v" }, "<M-CR>", vim.lsp.buf.code_action, {})
--     end
--   },
-- }
--



-- [[ Configure ]]
--

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-u>'] = cmp.mapping.scroll_docs(4),
    ['<C-e>'] = cmp.mapping.scroll_docs(-2),
    ['<C-y>'] = cmp.mapping.scroll_docs(2),
    ['<C-s>'] = cmp.mapping.abort(),
    -- ['<C-Space>'] = cmp.mapping.complete {},
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false
    },
    -- ['nj'] = cmp.mapping(function(fallback)
    --   if luasnip.locally_jumpable(1) then
    --     luasnip.jump(1)
    --   else
    --     fallback()
    --   end
    -- end, { 's' }),
    ['<C-n>'] = cmp.mapping(function(fallback)
      if luasnip.locally_jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { 'i', 's' }),
    -- ['jn'] = cmp.mapping(function(fallback)
    --   if luasnip.locally_jumpable(-1) then
    --     luasnip.jump(-1)
    --   else
    --     fallback()
    --   end
    -- end, { 's' }),
    ['<C-p>'] = cmp.mapping(function(fallback)
      if luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      end
    end, { 'i', 's' }),
    ['<Tab>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item()
      end
    end, { 'i' })
  },
  sources = { {
    -- name = 'nvim_lsp': forårsaker error (insert mode skriving)
  }, {
    name = 'luasnip'
  }, {
    name = 'path'
  } }
}






-- https://vi.stackexchange.com/questions/46749/correct-way-to-utilize-on-attach-in-the-new-vim-lsp-config-setup-in-neovim-v0-11

-- vim.lsp.on_attach(function(client, bufnr)
--   local opts = { buffer = bufnr, remap = false }
--
--   -- go somewhere
--   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {
--     desc = "Go to definition",
--     buffer = bufnr,
--     remap = false
--   })
--   vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end,
--     {
--       desc = "Find usages of word/variable",
--       buffer = bufnr,
--       remap = false
--     })
--   -- vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, 'Go to definition')
--   -- vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, 'Find references')
--
--   -- show information
--   vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {
--     desc = "Show definition",
--     buffer = bufnr,
--     remap = false
--   })
--   vim.keymap.set("n", "<leader>help", function() vim.lsp.buf.signature_help() end,
--     {
--       desc = "Signature help current word",
--       buffer = bufnr,
--       remap = false
--     })
--
--   -- diagnostics
--   vim.keymap.set("n", "<leader>es", function() vim.diagnostic.open_float() end,
--     {
--       desc = "open diagnostic, language errors",
--       buffer = bufnr,
--       remap = false
--     })
--   vim.keymap.set("n", "<l", function() vim.diagnostic.goto_next() end,
--     { buffer = bufnr, remap = false, desc = "Go to next error" })
--   vim.keymap.set("n", "<h", function() vim.diagnostic.goto_prev() end,
--     { buffer = bufnr, remap = false, desc = "Go to previous error" })
--
--   -- do something
--   vim.keymap.set("n", "<leader><leader>vrn", function() vim.lsp.buf.rename() end,
--     {
--       desc = "rename",
--       buffer = bufnr,
--       remap = false
--     })
--   vim.keymap.set("n", "<leader><leader>vca", function() vim.lsp.buf.code_action() end,
--     {
--       desc = "code action",
--       buffer = bufnr,
--       remap = false
--     })
--
--
--   -- other
--   -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
-- end)

-- vim.lsp.setup()
