return {
  -- [[ Colorschemes ]]

  -- GRUVBOX
  'gruvbox-community/gruvbox',

  -- TOKYONIGHT
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function ()
      -- vim.cmd.colorscheme 'tokyonight-night'
      -- vim.cmd.colorscheme 'tokyonight-storm'
      -- vim.cmd.colorscheme 'tokyonight-day'
      vim.cmd.colorscheme 'tokyonight-moon'
    end,
  },

  -- EVERFOREST
  'sainnhe/everforest',

  -- ONEDARK
  { -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
  },

  -- ROSEPINE
  { -- Rose Pine Theme
    'rose-pine/neovim', as = 'rose-pine',
  },

  -- NIGHTFLY
  'bluz71/vim-nightfly-guicolors',

  -- CATPPUCCIN
  {
    "catppuccin/nvim",
    name = "catppuccin",
  }
}
