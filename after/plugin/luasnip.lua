-- Lazy Load snippets, ie only load when required
require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.local/nvim/LuaSnippets/snippets/" })
-- require("luasnip").config.set_config({
--   enable_autosnippets = true,
-- })
