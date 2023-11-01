-- plugins put the plugins without config needed here
return {
  -- NOTE: First some plugins that don't require any configuration


  -- NOTE: This is where your plugins related to LSP can be installed.
  -- The configuration is done below. Search for lspconfig to find it below.
  { -- [[ LSP Configuration and Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is teh same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

      -- Additinal lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline' },
  },

  -- Useful plugin to show you pending keybindings.
  { 'folke/which-key.nvim', opts = {} },
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  { -- Add indentation lines even on blanklines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    main = "ibl",
    opts = {
      scope = { enable = true },
      -- char = '┊',
      -- show_trailing_blankline_indent = false,
    },
    config = function()
      require("ibl").setup()
    end
  },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' }},

  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  -- Only load if `make` is available. Make sure you have the system
  -- requirements installed
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation refer to the README for telescope-fzf-native for more instructions
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  {
    -- [[ Treesitter ]]
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },

  -- [[ Calendar ]]
  'renerocksai/calendar-vim',

  -- [[ Vimwiki ]]
  {
    'vimwiki/vimwiki',
    -- config = function()
    --   vim.g.vimwiki_global_ext = 0
    --   vim.g.vimwiki_list = {
    --     {
    --       auto_export = 1,
    --       path = '~/vimwiki/',
    --       syntax = 'markdown',
    --       ext = '.md',
    --     }
    --   }
    -- end
  },

  -- [[ Distraction Free ]]
  'junegunn/goyo.vim',

  -- Lua
  {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  -- [[ Easy align ]]
  'junegunn/vim-easy-align',



  -- NOTE: Next Step on your Neovim journey: Add/Configure additional plugins

  -- NOTE: The import below automatically adds your own plugins, configurations, etc from 'lua/custom/plugins/*.lua'
  -- For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
  -- { import = 'custom.plugins' },
}
