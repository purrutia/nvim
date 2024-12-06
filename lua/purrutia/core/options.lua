-- options.lua
--
-- Kickstart config
-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.wo.numberwidth = 4
vim.wo.relativenumber = true

-- Disable mouse mode
vim.o.mouse = ""

-- Sync clipboard between OS and Neovim
-- Remove this option if you want your OS clipboard to remain independent.
-- See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
-- Location of undofiles
local homedir = os.getenv("HOME")
vim.o.undodir = homedir .. "/.local/nvim/undodir"

-- Case insensitive searching unless /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- keep sign column by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 300
vim.o.timeout = true
vim.o.timeoutlen = 400

-- Set completopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal support this
vim.o.termguicolors = true

-- TABS:
-- convert tabs to spaces
vim.o.expandtab = true
-- the number of spaces inserted for each indentation
vim.o.shiftwidth = 4
-- insert 4 spaces for a tab
vim.o.tabstop = 4
-- number of spaces used when editing tabs
vim.o.softtabstop = 4
-- smartindent
vim.o.smartindent = true

vim.o.conceallevel = 2

-- scrolloff
vim.o.scrolloff = 8

--------------------------------------------------------------------------------

-- Cursor line
vim.o.cursorline = true

-- Appearance
vim.o.background = "dark"

-- Line wrapping
vim.o.wrap = false

-- Split windows
vim.o.splitright = true
vim.o.splitbelow = true

-- not split on dashes
vim.opt.iskeyword:append("-")
