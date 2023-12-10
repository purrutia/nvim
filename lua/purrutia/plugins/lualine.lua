-- lualine
return { -- set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = false,
      theme = 'palenight',
      component_separators = '|',
      section_separators = '',
    },
  },
}
