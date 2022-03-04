-- options.lua
--
-- File with all the basic options of the nvim editor

local options = {
	syntax = "on",                                  -- enable syntax
	backup = false,					                        -- don't create backupt file
	backspace = {'indent', 'eol', 'start'},		      -- Backspace behavior
	clipboard = "unnamedplus",			                -- allows neovim to access the system clipboard
	cmdheight = 2,					                        -- more space in the neovim command line for displaying messages
	completeopt = { "menuone", "noselect" },	      -- mostly just for completion
	conceallevel = 0,				                        -- so that `` is visible in markdown files
	errorbells = false,				                      -- disable audible bells
	fileencoding = "utf-8",				                  -- the encoding written to a file
	hlsearch = false,				                        -- highlight all matches on previous search pattern
	hidden = true,					                        -- you can change buffers without saving them
	ignorecase = true,				                      -- ignore case in search patterns
	incsearch = true,				                        -- Enable searching as you type
	mouse = "",					                            -- disable mouse in neovim
	pumheight = 10,					                        -- pop up menu height
	showmode = false,				                        -- we don't need to see things like -- INSERT -- anymore
	showtabline = 2, 				                        -- always shows tabs
	smartcase = true,				                        -- smartcase
	smartindent = true,				                      -- make indents smart again
	splitbelow = true,				                      -- force all horizontal splits to go below current window
	splitright = true,				                      -- force all vertical splits to go to the right of the current window
	swapfile = false,				                        -- don't create swap file
	termguicolors = true,				                    -- set term gui colors (most terminals support this)
	timeoutlen = 700,				                        -- time to wait in miliseconds for a mapped sequence to complete (default 1000)
	undofile = true,				                        -- enable persistent undo
	undodir = "/home/purrutia/.local/nvim/undodir",	-- location of undo files
	updatetime = 300,				                        -- faster completion (400 default)
	writebackup = false,				                    -- if a file is being edited by another program (or was written to file while editing with another program, it is no allowed to be edited
	expandtab = true, 				                      -- convert tabs to spaces
	shiftwidth = 2, 				                        -- the number of spaces inserted for each indentation
	tabstop = 2,					                          -- insert 2 spaces for a tab
	softtabstop = 2,				                        -- number of spaces used when editing tabs
	cursorline = true, 				                      -- highlight the current line
	number = true,					                        -- set numbered lines
	relativenumber = true, 				                  -- set relative numbered lines
	numberwidth = 4, 				                        -- set number of column width to 4
	signcolumn = "yes",				                      -- always show the sign column, otherwise it shift the text each time
	wrap = false,					                          -- do not break lines
	scrolloff = 8,					                        -- minimal number of screen lines to keep above and below the cursor
	sidescrolloff = 8, 				                      -- minimal number of columns to scroll horizontally
	guifont = "monospace:h17",			                -- the font used in graphical neovim app
  foldenable = false,                             -- no folds
}

vim.opt.shortmess:append "c"

for key, value in pairs(options) do
	vim.opt[key] = value
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set guicursor= ]]
-- vim.cmd [[set formatoption-=cro]]

-- NETRW window size to 20%
vim.g.netrw_winsize=20
