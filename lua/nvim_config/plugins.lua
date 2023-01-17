local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

-------------------------------------------------

  -- Common
  use "wbthomason/packer.nvim"        -- Have packer manage itself

  -- PANDOC
  use "vim-pandoc/vim-pandoc"
  use "vim-pandoc/vim-pandoc-syntax"

  -- VIMWIKI
  use "vimwiki/vimwiki"

  -- Colorschemes
  use "gruvbox-community/gruvbox"
  use 'folke/tokyonight.nvim'
  use "lunarvim/darkplus.nvim"
  use "sainnhe/everforest"

  -- Distraction free
  use "junegunn/goyo.vim"

  -- Easy align
  use "junegunn/vim-easy-align"

  -- Telescope
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Completion Plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- command line completions
  use "hrsh7th/cmp-nvim-lsp" -- LSP completions
  use "onsails/lspkind.nvim" -- vscode-like pictograms for neovim lsp completion items

  -- snippets
  use "L3MON4D3/LuaSnip" -- snippet engine
  use "saadparwaiz1/cmp_luasnip" -- snippets completions
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Calendar 
  use "renerocksai/calendar-vim"

  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- TMUX / VIM Navigator
  use "christoomey/vim-tmux-navigator"

  -- Undotree
  use {
    "jiaoshijie/undotree",
    config = function()
      require('undotree').setup()
    end,
    requires = {
      "nvim-lua/plenary.nvim",
    },
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
