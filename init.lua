-- Set <space> as the Leader key
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- VIMWIKI -- (needs to be here)
vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_list = {
  {
    path = '~/vimwiki/',
    syntax = 'markdown',
    ext = '.md',
  }
}

-- CONFIGS
require("purrutia.core")
require("purrutia.lazy") -- plugin manager
