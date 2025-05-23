-- [[ Setting Package manager and Plugins ]]

-- Install package manager
-- https://github.com/folke/lazy.nvim
-- `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
-- You can configure plugins using the `config` key.
--
-- You can also configure plugins after the setup call,
-- as they will be available in your neovim runtime.
require("lazy").setup({
	{ import = "purrutia.plugins" },
	{ import = "purrutia.plugins.lsp" },
	{ import = "purrutia.plugins.custom" },
})

-- NOTE: The import below automatically adds your own plugins, configurations, etc from 'lua/custom/plugins/*.lua'
-- For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
-- { import = 'custom.plugins' },
