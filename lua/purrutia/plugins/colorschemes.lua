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
    priority = 1000,
  }
}
