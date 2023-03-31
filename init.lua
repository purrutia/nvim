-- Set <space> as the Leader key
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Disable <Space> and  in visual and normal Mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_list = {
  {
    path = '~/vimwiki/',
    syntax = 'markdown',
    ext = '.md',
  }
}
require "nvim_config"
-- require "vimwiki_conf"
-- require "reports"
-- require "pandoc_conf"
