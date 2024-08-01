local conform = require("conform")
conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
    -- Conform will run the first available formatter
    javascript = { "prettierd", "prettier", stop_after_first = true },
  },
})
-- vim.keymap.set("n", "<A-f>", conform.format, { desc = "format with conform" }) -- not sure if this even works
vim.keymap.set("n", "<A-f>", function()
  conform.format()
end, { desc = "format with conform" }) -- not sure if this even works
