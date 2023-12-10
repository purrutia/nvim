-- [[ Vimwiki ]]
return {
	"vimwiki/vimwiki",
	-- Options for vimwiki needs to be set before the plugin loads
	init = function()
		vim.g.vimwiki_global_ext = 0
		vim.g.vimwiki_hl_headers = 1
		vim.g.vimwiki_hl_cb_checked = 1
		-- list of wikis per folder, this case just one at ~/vimwiki and those are markdown by default
		vim.g.vimwiki_list = {
			{
				path = "~/vimwiki/",
				syntax = "markdown",
				ext = ".md",
			},
		}
		-- files are not added automatically to a wiki when are outside the vimwiki_list
	end,
}
