return {
  -- [[ Git Related plugins ]]
  {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "<leader>g", "<cmd>G<CR>", { desc = "Git project manage" })
        vim.keymap.set("n", "<leader>gp", "<cmd>Git push<CR>", { desc = "Git push" })
    end
  },
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Change Surroundings
  'tpope/vim-surround',
}
