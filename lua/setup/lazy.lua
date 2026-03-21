local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system(
    { "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
      lazypath })
end
vim.opt.rtp:prepend(lazypath)

vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe'
  },
  paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))'
  },
  cache_enabled = 0
}

vim.g.mapleader = " "

local plugins = {

  ----------------------------
  --** LSP/autocompletion **--
  ----------------------------
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
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

  ----------------------------
  --** Autopairs/surround **--
  ----------------------------
  -- { 'tpope/vim-surround',  pin = true },
  { 'tomtomjhj/vim-surround', branch = "delete-custom" }, -- make custom surround maps (see `vim-surround.lua`) work with "delete surrounding" and "change surrounding"
  {
    'alvan/vim-closetag',
    pin = true
  },
  { 'adelarsq/vim-matchit' },
  {
    "windwp/nvim-autopairs",
    pin = true,
    config = function()
      require("nvim-autopairs").setup {}
    end
  },

  ----------------------------
  --** Colorschemes **--
  ----------------------------
  {
    "folke/tokyonight.nvim",
    pin = true,
    lazy = false,
    priority = 1000,
    opts = {},
  },

  ----------------------------
  --** Fuzzy finder **--
  ----------------------------
  { "junegunn/fzf",    build = "./install --bin" },
  { "junegunn/fzf.vim" },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "nvim-mini/mini.icons" },
    ---@module "fzf-lua"
    ---@type fzf-lua.Config|{}
    ---@diagnostic disable: missing-fields
    opts = {}
    ---@diagnostic enable: missing-fields
  },
  {
    'nvim-telescope/telescope.nvim',
    enabled = true,
    version = '0.1.1',
    -- or                            , branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
      }
    },
    pin = true,
  },

  ----------------------------
  --** File navigation **--
  ----------------------------
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
  { 'sindrets/diffview.nvim',  pin = true },
  {
    'romgrk/barbar.nvim',
    dependencies = { 'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons'             -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0' -- optional: only update when a new 1.x version is released
  },                   -- {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

  ----------------------------
  -- ** Back on track **--
  ----------------------------
  {
    "rmagatti/auto-session",
    lazy = false,
    enabled = true,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" }
      -- log_level = 'debug',
    }
  }, { 'farmergreg/vim-lastplace' },

  ----------------------------
  --** Other **--
  ----------------------------
  { 'skywind3000/vim-quickui' },
  { 'RRethy/vim-illuminate', enabled = false },
  { 'TamaMcGlinn/quickfixdd' },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    pin = true
  },
  {
    "christoomey/vim-tmux-navigator",
    pin = true
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
  { 'djoshea/vim-autoread',        pin = true },
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
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    pin = true
  },
  { 'tpope/vim-commentary', pin = true },
  {
    "iamcco/markdown-preview.nvim",
    enabled = false,
    build = function()
      vim.fn["mkdp#util#install"]()
    end
  },
}

require("lazy").setup(plugins, {})
