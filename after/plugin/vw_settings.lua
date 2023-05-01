-- [[ Vimwiki Options ]]
vim.g.vimwiki_autowriteall = 1
vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_use_calendar = 1
vim.g.vimwiki_ext2syntax = {
  ['.md'] = 'markdown',
  ['.markdown'] = 'markdown',
  ['.mdown'] = 'markdown',
}

local vimwiki_group = vim.api.nvim_create_augroup("VimWikiFiles", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    vim.keymap.set ( { 'n', 'v' }, '<c-space>', '<Plug>VimwikiToggleListItem' )
  end,
  group = vimwiki_group,
  pattern = 'vimwiki',
})
