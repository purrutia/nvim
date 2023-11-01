-- lualine
return { -- set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = false,
      -- theme = 'onedark',
      -- theme = 'rose-pine',
      -- theme = 'tokyonight',
      theme = 'palenight',
      component_separators = '|',
      section_separators = '',
    },
  },
}
