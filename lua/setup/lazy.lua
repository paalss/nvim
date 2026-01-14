local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system(
    { "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath })
end
vim.opt.rtp:prepend(lazypath)


vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 0,
}

vim.g.mapleader = " "

local plugins = {
  { 'wellle/targets.vim' },
  { 'adelarsq/vim-matchit' },
  { 'skywind3000/vim-quickui' },
  { 'TamaMcGlinn/quickfixdd' },
  { 'farmergreg/vim-lastplace' },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    enabled = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    pin = true
  },
  {
    'alvan/vim-closetag',
    pin = true
  },
  {
    "christoomey/vim-tmux-navigator",
    pin = true
  },
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    pin = true,
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim',       tag = 'legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },
  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    pin = true,
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Path
      'hrsh7th/cmp-path',

      -- Adds a number of user-friendly snippets
      'paalss/friendly-snippets',
    },
  },
  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    main = "ibl",
    pin = true,
    opts = {
      indent = { char = '┊' }
    },
  },
  -- { 'HiPhish/rainbow-delimiters.nvim', pin = true },
  {
    "windwp/nvim-autopairs",
    pin = true,
    config = function()
      require("nvim-autopairs").setup {}
    end
  },
  { 'djoshea/vim-autoread', pin = true },
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.1',
    -- or                            , branch = '0.1.x',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    pin = true,
  },
  { "MaximilianLloyd/adjacent.nvim", pin = true },
  {
    "jasonpanosso/harpoon-tabline.nvim",
    dependencies = { "ThePrimeagen/harpoon" }
  },
  { 'ThePrimeagen/harpoon',   pin = true },
  { 'tpope/vim-surround',     pin = true },
  { 'sindrets/diffview.nvim', pin = true },
  {
    'nvim-lualine/lualine.nvim',
    pin = true,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      lazy = true
    }
  },
  -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
  { 'nvim-tree/nvim-web-devicons', pin = true }, -- OPTIONAL: for file icons
  { 'lewis6991/gitsigns.nvim',     pin = true }, -- OPTIONAL: for git status
  { 'bignimbus/pop-punk.vim',      pin = true },
  {
    "folke/tokyonight.nvim",
    pin = true,
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    pin = true
  },
  { 'tpope/vim-commentary', pin = true },
  {
    "iamcco/markdown-preview.nvim",
    build = function()
      vim.fn["mkdp#util#install"]()
    end
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    pin = true,
    dependencies = {               -- LSP Support
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
  },
}

require("lazy").setup(plugins, {})
