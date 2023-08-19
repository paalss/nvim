
local plugins = {
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.1',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    ('mbbill/undotree'),
    ({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = { "nvim-lua/plenary.nvim" }
    }),
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {                 -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required
        {
            -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end
        }, { 'williamboman/mason-lspconfig.nvim' }, -- Optional
        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },                     -- Required
        { 'hrsh7th/cmp-nvim-lsp' },                 -- Required
        { 'L3MON4D3/LuaSnip' }                      -- Required
    }
} }

