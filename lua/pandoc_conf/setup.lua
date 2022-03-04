
-- Pandoc Syntax
vim.cmd([[
  let g:pandoc#syntax#conceal#blacklist = ['atx', 'codeblock_start', 'codeblock_delim']
  let g:pandoc#syntax#codeblocks#embeds#langs = ["bash=sh", "python", "c", "go", "vim"]
  ]])
