-- basic_configs.lua

-- Turn on syntax highlighting
vim.bo.syntax = "on"

-- Setting line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- TABS
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true

-- Indentation
vim.bo.smartindent = true

-- Disable the default Startup message
vim.o.shortmess = vim.o.shortmess .. 'I'

-- Disable swap files and backup
vim.bo.swapfile = false
vim.o.backup = false

-- Always show the status line at the bottom, even if you only have one window
-- open.
vim.o.laststatus = 2

-- UNDO dir
vim.o.undodir = "~/.local/nvim/undodir"
vim.bo.undofile = true

-- The backspace key has slightly unintuitive behavior by default. For example,
-- by default, you can't backspace before the insertion point set with 'i'.
-- This configuration makes backspace behave more reasonably, in that you can
-- backspace over anything.
vim.opt.backspace = {'indent','eol', 'start'}

-- Set Leader key
vim.g.mapleader = " "

-- By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
-- shown in any window) that has unsaved changes. This is to prevent you from "
-- forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
-- hidden buffers helpful enough to disable this protection. See `:help hidden`
-- for more information on this.
vim.o.hidden = true

-- This setting makes search case-insensitive when all characters in the string
-- being searched are lowercase. However, the search becomes case-sensitive if
-- it contains any capital letters. This makes searching more convenient.
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false

-- Enable searching as you type, rather than waiting till you press enter.
vim.o.incsearch = true

-- Disable audible bell because it's annoying.
vim.o.errorbells = false

-- Enable mouse support. You should avoid relying on this too much, but it can
-- sometimes be convenient.
-- set mouse+=a

-- Open horizontal splits below by default
vim.o.splitbelow = true
-- Open vertical splits on the right by default
vim.o.splitright = true

vim.wo.cursorline = true

-- Color column at 100 characters
-- vim.wo.colorcolumn = 100
-- vim.cmd[[au VimEnter * highlight ColorColumn ctermbg=0 guibg=lightgrey]]

