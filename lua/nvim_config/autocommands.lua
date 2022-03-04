-- Autocommands

-- Go to links on helpfiles
vim.cmd(
  [[
    augroup helpfiles
      autocmd!
      autocmd FileType help nnoremap <buffer> <CR> <C-]>
      autocmd FileType help nnoremap <buffer> <BS> <C-T>
    augroup END
  ]]
)
