return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
	--   "BufReadPre path/to/my-vault/**.md",
	--   "BufNewFile path/to/my-vault/**.md",
	-- },
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	},
	opts = {
		workspaces = {
			{
				name = "Second_Brain",
				path = "~/obsidian_vaults/Second_Brain/",
			},
			-- {
			--   name = "work",
			--   path = "~/vaults/work",
			-- },
		},

		-- see below for full list of options 👇
	},
	configure = function()
		require("obsidian").setup({
			-- put your configuration here

			-- Templates
			templates = {
				subdir = "Templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M",
			},

			-- Daily notes
			daily_notes = {
				folder = "Daily_Notes",
			},

			-- -- Looks
			ui = {
				enable = true, -- set to false to disable all additional syntax features
				update_debounce = 200, -- update delay after a text change (in milliseconds)
				-- Define how various check-boxes are displayed
				checkboxes = {
					-- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
					[" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
					["x"] = { char = "", hl_group = "ObsidianDone" },
					[">"] = { char = "", hl_group = "ObsidianRightArrow" },
					["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
					-- You can also add more custom ones...
				},
			},
		})
	end,
}
