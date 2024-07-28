-- https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls',
  'rust_analyzer',
  'html',
})


-- [[ Configure nvim-cmp ]]
-- See `:help cmp`
local cmp = require 'cmp'
local luasnip = require 'luasnip'
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-u>'] = cmp.mapping.scroll_docs(4),
    ['<C-s>'] = cmp.mapping.abort(),
    ['<C-Space>'] = cmp.mapping.complete {},
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false
    },
    -- navigate to next, text previewed in file
    -- Enter will create full snippet
    -- Any other than Tab or Enter will leave preview as is
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_locally_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' })
  },
  sources = { {
    name = 'nvim_lsp'
  }, {
    name = 'luasnip'
  }, {
    name = 'path'
  } }
}

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  -- go somewhere
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {
    desc = "Go to definition",
    buffer = bufnr,
    remap = false
  })
  vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end,
    {
      desc = "Find usages of word/variable",
      buffer = bufnr,
      remap = false
    })
  -- vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, 'Go to definition')
  -- vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, 'Find usages of word/variable')

  -- show information
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, {
    desc = "Show definition",
    buffer = bufnr,
    remap = false
  })
  vim.keymap.set("n", "<leader>help", function() vim.lsp.buf.signature_help() end,
    {
      desc = "Signature help current word",
      buffer = bufnr,
      remap = false
    })

  -- diagnostics
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end,
    {
      desc = "open diagnostic, language errors",
      buffer = bufnr,
      remap = false
    })
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

  -- do something
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end,
    {
      desc = "rename",
      buffer = bufnr,
      remap = false
    })
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end,
    {
      desc = "code action",
      buffer = bufnr,
      remap = false
    })


  -- other
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
end)

lsp.setup()
