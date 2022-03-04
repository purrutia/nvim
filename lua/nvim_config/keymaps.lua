-- keymaps.lua
-- mappings defined on lua

local options = { noremap = true, silent = true }

-- local term_options = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes:
--
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  terminal_mode = "t"
--  command_mode = "c"

-- Normal Mode --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", options)
keymap("n", "<C-j>", "<C-w>j", options)
keymap("n", "<C-k>", "<C-w>k", options)
keymap("n", "<C-l>", "<C-w>l", options)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", options)
keymap("n", "<C-Down>", ":resize +2<CR>", options)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", options)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", options)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", options)
keymap("n", "<S-h>", ":bprevious<CR>", options)

-- Move text up and down
keymap("n", "<A-j>", "<ESC>:m .+1<CR>==", options)
keymap("n", "<A-k>", "<ESC>:m .-2<CR>==", options)

-- NO ARROWS
keymap("n", "<Left>", ":echoe 'Use h'<CR>", options)
keymap("n", "<Right>", ":echoe 'Use l'<CR>", options)
keymap("n", "<Up>", ":echoe 'Use k'<CR>", options)
keymap("n", "<Down>", ":echoe 'Use j'<CR>", options)

-- Quick Save
keymap("n", "<leader>w", ":w<CR>", options)

-- Q in normal mode enters on Ex mode. You almost never want this
keymap("n", "Q", "<Nop>", options)

-- Quicker buffer close
keymap("n", "<leader>q", ":bd<CR>", options)

-- Copy and paste to the clipboard. BEST MAPPINGS EVER!!!
keymap("n", "<leader>y", '"+y', options)
keymap("n", "<leader>p", '"+p', options)

-- Yank to the end of the line
keymap("n", "Y", 'y$', options)

-- Edit Config file
--keymap("n", "<leader>ie", ":edit $MYVIMRC<CR>", options)
--keymap("n", "<leader>is", ":source $MYVIMRC<CR>", options)

-- Fix increasing number since <C-a> is taken by tmux
keymap("n", "<leader>a", "<C-a>", options)

-- Change word to uppercase
keymap("n", "<A-m>", "gUiw", options)

-- Change CWR to root file directory
keymap("n", "<leader>cd", ":lcd %:p:h<CR>", options)

-- Insert Mode
-- NO ARROWS
keymap("i", "<Left>", "<ESC>:echoe 'Use h'<CR>a", options)
keymap("i", "<Right>", "<ESC>:echoe 'Use l'<CR>a", options)
keymap("i", "<Up>", "<ESC>:echoe 'Use k'<CR>a", options)
keymap("i", "<Down>", "<ESC>:echoe 'Use j'<CR>a", options)

-- Change word to uppercase
keymap("i", "<A-m>", "<ESC>gUiwea", options)

-- Visual Mode
-- Stay in indent mode
keymap("v", "<", "<gv", options)
keymap("v", ">", ">gv", options)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", options)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", options)

-- Copy and paste to the clipboard. BEST MAPPINGS EVER!!!
keymap("v", "<leader>y", '"+y', options)

-- Terminal Mode
-- Change to normal mode in terminal
keymap("t", "<ESC><ESC>", "<C-\\><C-n>", options)
