local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system(
    { "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
  {
    "folke/trouble.nvim",
    pin = true,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    'smjonas/live-command.nvim',
    pin = true,
    config = function()
      require("live-command").setup {
        commands = {
          Norm = { cmd = "norm" },
          At = {
            cmd = "norm",
            -- This will transform ":5At a" into ":norm 5@a"
            args = function(opts)
              return (opts.count == -1 and "" or opts.count) .. "@" .. opts.args
            end,
            range = "",
          },
        }
      }
    end
  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    -- tag = "*",
    pin = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      }
    end,
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

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
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
  { 'https://gitlab.com/HiPhish/rainbow-delimiters.nvim', pin = true },
  {
    "windwp/nvim-autopairs",
    pin = true,
    config = function()
      require("nvim-autopairs").setup {}
    end
  },
  { 'djoshea/vim-autoread',                               pin = true },
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.1',
    -- or                            , branch = '0.1.x',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    pin = true,
  },
  { "MaximilianLloyd/adjacent.nvim", pin = true },
  { 'ThePrimeagen/harpoon',          pin = true },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to  `main` branch for the latest features
    pin = true,
    config = function()
      require("nvim-surround").setup({
        --  Configuration here, or leave empty to  defaults
      })
    end
  },
  { 'sindrets/diffview.nvim',      pin = true },
  {
    "mg979/vim-visual-multi",
    pin = true,
    branch = "master"
  },
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
  -- {'akinsho/git-conflict.nvim', version = "*", config = true}, -- ikke bra nok: farge fjernes når lazygit nvim åpnes og man må :lua colorMyPencils() / :colorcheme tokyonight-night
  { 'martinsione/darkplus.nvim',   pin = true },
  {
    "folke/tokyonight.nvim",
    pin = true,
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { 'romgrk/barbar.nvim',              pin = true },
  { 'nvim-treesitter/nvim-treesitter', pin = true },
  build = ':TSUpdate',
  { 'mbbill/undotree',      pin = true },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    pin = true,
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { 'tpope/vim-commentary', pin = true },
  { 'numToStr/FTerm.nvim',  pin = true },
  -- ('tpope/vim-fugitive')
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
    dependencies = {             -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end
      }, { 'williamboman/mason-lspconfig.nvim' }, -- Optional
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },                   -- Required
      { 'hrsh7th/cmp-nvim-lsp' },               -- Required
      { 'L3MON4D3/LuaSnip' }                    -- Required
    }
  },
}

require("lazy").setup(plugins, {})
