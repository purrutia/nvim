-- init.lu for LSP module

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("nvim_config.lsp.lsp-installer")
require("nvim_config.lsp.handlers").setup()

vim.cmd(
  [[
   augroup markdownFiles
    autocmd!
    autocmd BufRead, BufNewFile *.md lua vim.diagnostic.disable(<abuf>)
  augroup END
  ]]
)
