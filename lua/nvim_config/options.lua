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

-- Enable mouse mode
-- vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim
-- Remove this option if you want your OS clipboard to remain independent.
-- See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true
-- Location of undofiles
vim.o.undodir = '$HOME/.local/nvim/undodir'

-- Case insensitive searching unless /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- keep sign column by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 300
vim.o.timeout = true
vim.o.timeoutlen = 400

-- Set completopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal support this
vim.o.termguicolors = true

-- TABS:
-- convert tabs to spaces
vim.o.expandtab = true
-- the number of spaces inserted for each indentation
vim.o.shiftwidth = 2
-- insert 2 spaces for a tab
vim.o.tabstop = 2
-- number of spaces used when editing tabs
vim.o.softtabstop = 2
-- smartindent
vim.o.smartindent = true

vim.o.conceallevel = 0

-- scrolloff
vim.o.scrolloff = 8
--------------------------------------------------------------------------------
-- File with all the basic options of the nvim editor:

-- vim.opt.syntax = "on"                                  -- enable syntax
-- vim.opt.backup = false					                        -- don't create backup file
-- vim.opt.backspace = {'indent', 'eol', 'start'}		      -- Backspace behavior
-- vim.opt.cmdheight = 2					                        -- more space in the neovim command line for displaying messages
-- vim.opt.errorbells = false				                      -- disable audible bells
-- vim.opt.fileencoding = "utf-8"				                  -- the encoding written to a file
-- vim.opt.guicursor = ""
-- vim.opt.hidden = true					                        -- you can change buffers without saving them
-- vim.opt.incsearch = true				                        -- Enable searching as you type
-- vim.opt.pumheight = 10					                        -- pop up menu height
-- vim.opt.showmode = false				                        -- shows vim mode
-- vim.opt.showtabline = 2 				                        -- always shows tabs
-- vim.opt.smartindent = true				                      -- make indents smart again
-- vim.opt.splitbelow = true				                      -- force all horizontal splits to go below current window
-- vim.opt.splitright = true				                      -- force all vertical splits to go to the right of the current window
-- vim.opt.swapfile = false				                        -- don't create swap file
-- vim.opt.writebackup = false				                    -- if a file is being edited by another program (or was written to file while editing with another program, it is no allowed to be edited
-- vim.opt.expandtab = true 				                      -- convert tabs to spaces
-- vim.opt.shiftwidth = 2 				                        -- the number of spaces inserted for each indentation
-- vim.opt.tabstop = 2					                          -- insert 2 spaces for a tab
-- vim.opt.softtabstop = 2				                        -- number of spaces used when editing tabs
-- vim.opt.cursorline = true 				                      -- highlight the current line
-- vim.opt.relativenumber = true 				                  -- set relative numbered lines
-- vim.opt.numberwidth = 4 				                        -- set number of column width to 4
-- vim.opt.wrap = false					                          -- do not break lines
-- vim.opt.scrolloff = 8					                        -- minimal number of screen lines to keep above and below the cursor
-- vim.opt.sidescrolloff = 8 				                      -- minimal number of columns to scroll horizontally
-- vim.opt.guifont = "monospace:h17"			                -- the font used in graphical neovim app
-- vim.opt.foldenable = false                             -- no folds
-- vim.opt.laststatus = 3
--
--
-- vim.opt.shortmess:append "c"                          -- see :help shortmess
-- vim.opt.iskeyword:append({ '-' })                     -- see :help iskeyword
-- -- vim.opt.whichwrap:append({ '<', '>', '[', ']' })      -- see :help whichwrap
-- vim.opt.formatoptions:remove({ 'c', 'r', 'o' })       -- avoid adding comments on newline when you are on a commented line. Use Comments.nvim instead 'gco' or 'gcO'
--
-- -- NETRW window size to 20%
-- vim.g.netrw_winsize=20
