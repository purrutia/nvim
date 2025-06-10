return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- Required
		harpoon:setup()

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { desc = "Harpoon add file" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon list" })
		vim.keymap.set("n", "<leader>hm", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon first file" })
		vim.keymap.set("n", "<leader>h,", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon second file" })
		vim.keymap.set("n", "<leader>h.", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon third file" })
		vim.keymap.set("n", "<leader>hj", function()
			harpoon:list():select(4)
		end, { desc = "Harpoon fourth file" })
		vim.keymap.set("n", "<leader>hp", function()
			harpoon:list():prev()
		end, { desc = "Harpoon previous file" })
		vim.keymap.set("n", "<leader>hn", function()
			harpoon:list():next()
		end, { desc = "Harpoon next file" })
	end,
}
