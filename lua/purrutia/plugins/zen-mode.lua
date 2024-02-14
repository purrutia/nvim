-- [[ Distraction Free ]]
return {
	"folke/zen-mode.nvim",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		window = {
			width = 0.8,
		},
		plugins = {
			twilight = { enabled = false },
			tmux = { enabled = true },
		},
	},
}
