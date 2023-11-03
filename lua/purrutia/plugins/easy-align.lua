-- [[ Easy align ]]
return {
  {
    'junegunn/vim-easy-align',
    config = function()
      -- Mappings
      vim.keymap.set( { "n", "x" }, "ga", "<Plug>(EasyAlign)", { silent = true })
    end
  },
}
