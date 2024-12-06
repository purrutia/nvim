-- Keymaps for help files

vim.keymap.set({ "n", "v" }, "<CR>", "<C-]>", { silent = true, buffer = true })
vim.keymap.set({ "n", "v" }, "<BS>", "<C-T>", { silent = true, buffer = true })
vim.keymap.set({ "n", "v" }, "q", "<cmd>close<CR>", { silent = true, buffer = true })
