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
	config = function()
		require("obsidian").setup({
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
			-- Templates
			templates = {
				subdir = "Templates",
				-- date_format = "%Y-%m-%d",
				-- time_format = "%H:%M",
			},
			daily_notes = {
				-- Optional, if you keep daily notes in a separate directory.
				folder = "Daily_Notes",
				-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
				template = "Daily_Note_template.md",
			},

			note_frontmatter_func = function(note)
				-- Add the title of the note as an alias
				if note.title then
					note:add_alias(note.title)
				end

				local out = { id = note.id, aliases = note.aliases, tags = note.tags, title = note.title }

				-- `note.metadata` contains any manually added fields in the frontmatter.
				-- So here we just make sure those fields are kept in the frontmatter.
				if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
					for k, v in pairs(note.metadata) do
						out[k] = v
					end
				end

				return out
			end,

			preferred_link_style = "markdown",

			follow_url_func = function(url)
				-- Open the URL in the default web browser.
				-- 	vim.fn.jobstart({"open", url})  -- Mac OS
				vim.fn.jobstart({ "xdg-open", url }) -- linux
			end,
			ui = {
				-- disable markdown rendering
				enable = false,
			},
		})
		-- Key Maps
		vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianToday<cr>", { desc = "Obsidian Today note" })
		vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "Obsidian New note" })
		vim.keymap.set("v", "<leader>ol", ":'<, '>ObsidianLinkNew<cr>", { desc = "Obsidian New Link and note" })
		vim.keymap.set("n", "<leader>fo", "<cmd>ObsidianSearch<cr>", { desc = "Search in Obsidian Vault" })
		vim.keymap.set("n", "<leader>oc", ":norm _i- [ ] <esc>", { desc = "Make a checkbox" })
		vim.keymap.set("v", "<leader>cb", ":'<, '>ToggleCB<cr>", { desc = "Check box in visual mode" })
		vim.keymap.set("n", "<leader>cb", ":ToggleCB<cr>", { desc = "Check box" })
	end,
}
