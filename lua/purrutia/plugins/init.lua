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



  -- NOTE: Next Step on your Neovim journey: Add/Configure additional plugins

  -- NOTE: The import below automatically adds your own plugins, configurations, etc from 'lua/custom/plugins/*.lua'
  -- For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
  -- { import = 'custom.plugins' },
}
