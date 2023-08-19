-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return { {
    "windwp/nvim-autopairs",
    -- Optional dependency
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
        require("nvim-autopairs").setup {}
        -- If you want to automatically add `(` after selecting a function or method
        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        local cmp = require('cmp')
        cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end
}, 'mbbill/undotree', {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = { "nvim-lua/plenary.nvim" }
}, {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {                     -- LSP Support
        { 'neovim/nvim-lspconfig' },     -- Required
        {
            -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end
        }, { 'williamboman/mason-lspconfig.nvim' },     -- Optional
        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },                         -- Required
        { 'hrsh7th/cmp-nvim-lsp' },                     -- Required
        { 'L3MON4D3/LuaSnip' }                          -- Required
    }
} }
