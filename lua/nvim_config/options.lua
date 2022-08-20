-- options.lua
--
-- File with all the basic options of the nvim editor:

vim.opt.syntax = "on"                                  -- enable syntax
vim.opt.backup = false					                        -- don't create backupt file
vim.opt.backspace = {'indent', 'eol', 'start'}		      -- Backspace behavior
vim.opt.clipboard = "unnamedplus"			                -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2					                        -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menu", "menuone", "noselect" }	      -- mostly just for completion
vim.opt.conceallevel = 0				                        -- so that `` is visible in markdown files
vim.opt.errorbells = false				                      -- disable audible bells
vim.opt.fileencoding = "utf-8"				                  -- the encoding written to a file
vim.opt.guicursor = ""
vim.opt.hlsearch = false				                        -- highlight all matches on previous search pattern
vim.opt.hidden = true					                        -- you can change buffers without saving them
vim.opt.ignorecase = true				                      -- ignore case in search patterns
vim.opt.incsearch = true				                        -- Enable searching as you type
vim.opt.mouse = ""					                            -- disable mouse in neovim
vim.opt.pumheight = 10					                        -- pop up menu height
vim.opt.showmode = false				                        -- shows vim mode
vim.opt.showtabline = 2 				                        -- always shows tabs
vim.opt.smartcase = true				                        -- smartcase
vim.opt.smartindent = true				                      -- make indents smart again
vim.opt.splitbelow = true				                      -- force all horizontal splits to go below current window
vim.opt.splitright = true				                      -- force all vertical splits to go to the right of the current window
vim.opt.swapfile = false				                        -- don't create swap file
vim.opt.termguicolors = true				                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 700				                        -- time to wait in miliseconds for a mapped sequence to complete (default 1000)
vim.opt.undofile = true				                        -- enable persistent undo
vim.opt.undodir = "/home/purrutia/.local/nvim/undodir"	-- location of undo files
vim.opt.updatetime = 300				                        -- faster completion (400 default)
vim.opt.writebackup = false				                    -- if a file is being edited by another program (or was written to file while editing with another program, it is no allowed to be edited
vim.opt.expandtab = true 				                      -- convert tabs to spaces
vim.opt.shiftwidth = 2 				                        -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2					                          -- insert 2 spaces for a tab
vim.opt.softtabstop = 2				                        -- number of spaces used when editing tabs
vim.opt.cursorline = true 				                      -- highlight the current line
vim.opt.number = true					                        -- set numbered lines
vim.opt.relativenumber = true 				                  -- set relative numbered lines
vim.opt.numberwidth = 4 				                        -- set number of column width to 4
vim.opt.signcolumn = "yes"				                      -- always show the sign column, otherwise it shift the text each time
vim.opt.wrap = false					                          -- do not break lines
vim.opt.scrolloff = 8					                        -- minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 8 				                      -- minimal number of columns to scroll horizontally
vim.opt.guifont = "monospace:h17"			                -- the font used in graphical neovim app
vim.opt.foldenable = false                             -- no folds
vim.opt.laststatus = 3


vim.opt.shortmess:append "c"                          -- see :help shortmess
vim.opt.iskeyword:append({ '-' })                     -- see :help iskeyword
-- vim.opt.whichwrap:append({ '<', '>', '[', ']' })      -- see :help whichwrap
vim.opt.formatoptions:remove({ 'c', 'r', 'o' })       -- avoid adding comments on newline when you are on a commented line. Use Comments.nvim instead 'gco' or 'gcO'

-- NETRW window size to 20%
vim.g.netrw_winsize=20
