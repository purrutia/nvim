-- ColorScheme Configuration
-- local colorscheme = "tokyonight"
local colorscheme = "everforest"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!!!")
  return
end

-- Options for tokyonight

vim.g.tokyonight_style = "night"
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true

-- Options for everforest

vim.g.everforest_better_performance = 1

