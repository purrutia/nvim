-- special for lua files

-- Run code
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { silent = true, desc = "eXecute current line in Lua" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { silent = true, desc = "eXecute visual selection in Lua" })
