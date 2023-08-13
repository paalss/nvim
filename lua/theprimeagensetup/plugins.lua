local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        { "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", -- latest stable release
            lazypath })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.1',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                --  Configuration here, or leave empty to use defaults
            })
        end
    },
    'sindrets/diffview.nvim', {
    "mg979/vim-visual-multi",
    branch = "master"
},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            opt = true
        }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = { "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim" }
    }, 'martinsione/darkplus.nvim',
    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    ('nvim-tree/nvim-web-devicons'), -- OPTIONAL: for file icons
    ('lewis6991/gitsigns.nvim'),     -- OPTIONAL: for git status
    ('romgrk/barbar.nvim'),
    'nvim-treesitter/nvim-treesitter', { build = ':TSUpdate' },
    ('mbbill/undotree'),
    ({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = { "nvim-lua/plenary.nvim" }
    }),
    ('tpope/vim-commentary'),
    {
        "akinsho/toggleterm.nvim",
        version = '*',
        config = function()
            require("toggleterm").setup()
        end
    }, -- ('tpope/vim-fugitive')
    ({
        "iamcco/markdown-preview.nvim",
        build = function()
            vim.fn["mkdp#util#install"]()
        end
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

local opts = {}

require("lazy").setup(plugins, opts)
