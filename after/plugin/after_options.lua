-- After Options
-- formatoptions is set by a file after init.lua, so this should overwrite that

vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" }) -- avoid adding comments on newline when you are on a commented line. Use Comments.nvim instead 'gco' or 'gcO'
	end,
})

-- set wrap for markdown files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	group = vim.api.nvim_create_augroup("wrapMDs", { clear = true }),
	pattern = "*.md",
	callback = function()
		vim.opt.wrap = true
	end,
})
