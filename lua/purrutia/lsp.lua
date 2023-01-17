-- Language server installation
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua" }
})

-- Language Server Config

local capabilities = require('cmp_nvim_lsp').default_capabilities()


-- General Mappings
-- Use on_attach to enable mappings only when an lsp server is attached
local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }

  -- Mappings
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, bufopts)
  vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, bufopts)
  vim.keymap.set("n", "<leader>dt", "<cmd>Telescope diagnostics<CR>", bufopts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)

end

-- LUA language server
require("lspconfig")["sumneko_lua"].setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the vim global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- GOPLS language server
require'lspconfig'.gopls.setup{}

-- PyRight
require'lspconfig'.pyright.setup{}
