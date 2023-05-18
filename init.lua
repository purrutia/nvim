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
-- clipboard on WSL
-- TODO: move it to separated file
-- local in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil
--
-- if in_wsl then
--   vim.g.clipboard = {
--     name = 'wsl clipboard',
--     copy = { ["+"] = { "clip.exe" },["*"] = { "clip.exe" } },
--     paste = { ["+"] = { "neovim_paste" },
--               ["*"] = { "neovim_paste" } },
--     cache_enabled = 0,
--   }
-- end

-- CONFIGS
require "nvim_config"

