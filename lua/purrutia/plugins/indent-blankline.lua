-- Guide lines for sections
return { -- Add indentation lines even on blanklines
	"lukas-reineke/indent-blankline.nvim",
	-- Enable `lukas-reineke/indent-blankline.nvim`
	-- See `:help indent_blankline.txt`
	main = "ibl",
	opts = {
		scope = { enable = true },
	},
	config = function()
		require("ibl").setup()
	end,
}
