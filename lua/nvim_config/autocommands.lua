-- Autocommands

-- Go to links on helpfiles and quit with q

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("helpfiles", { clear = true }),
  pattern = "help",
  callback = function()
    vim.keymap.set( { "n", "v" }, "<CR>", "<C-]>", { silent = true, buffer = true })
    vim.keymap.set( { "n", "v" }, "<BS>", "<C-T>", { silent = true, buffer = true })
    vim.keymap.set( { "n", "v" }, "q", "<cmd>close<CR>", { silent = true, buffer = true })
  end,
})
