-- [[ NVIM CMP ]]
-- Completion
return {
  -- Autocompletion
  'hrsh7th/nvim-cmp',
  event = "InsertEnter",
  dependencies = {
    'hrsh7th/cmp-nvim-lsp', -- for nvim builtin language
    {
      'L3MON4D3/LuaSnip', -- Snipet engine
      config = function()
        require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.local/nvim/LuaSnippets/snippets/" })
      end
    },
    'saadparwaiz1/cmp_luasnip', -- for autocompetion
    'hrsh7th/cmp-buffer', -- Source for text in buffer
    'hrsh7th/cmp-path', -- Source for file system paths
    'hrsh7th/cmp-cmdline' -- Command line suggestions
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require('luasnip')

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(), -- previus suggestion
        ['<C-j>'] = cmp.mapping.select_next_item(), -- next suggestion
        ['<C-d>'] = cmp.mapping.scroll_docs(-4), -- scroll down
        ['<C-f>'] = cmp.mapping.scroll_docs(4), -- scroll up
        ['<C-e>'] = cmp.mapping.abort(), -- close completion window
        ['<C-Space>'] = cmp.mapping.complete(), -- open completion window
        ['<CR>'] = cmp.mapping.confirm( { select = false } ), -- confirm completion
      }),
      -- sources for autocompletion
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
      },
    })

  end
}
