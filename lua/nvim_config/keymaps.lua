-- keymaps.lua
-- mappings defined on lua

-- Remap space as leader key
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
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true})
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true})

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>", { silent = true})
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>", { silent = true})
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { silent = true})
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { silent = true})

-- Navigate buffers
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { silent = true})
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { silent = true})

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==", { silent = true})
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==", { silent = true})

-- NO ARROWS
vim.keymap.set("n", "<Left>", "<cmd>echoe 'Use h'<CR>", { silent = true})
vim.keymap.set("n", "<Right>", "<cmd>echoe 'Use l'<CR>", { silent = true})
vim.keymap.set("n", "<Up>", "<cmd>echoe 'Use k'<CR>", { silent = true})
vim.keymap.set("n", "<Down>", "<cmd>echoe 'Use j'<CR>", { silent = true})

-- Quick Save
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { silent = true})

-- Q in normal mode enters on Ex mode. You almost never want this
vim.keymap.set("n", "Q", "<Nop>", { silent = true})

-- Quicker buffer close
vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>", { silent = true})

-- Copy and paste to the clipboard. BEST MAPPINGS EVER!!!
vim.keymap.set("n", "<leader>y", '"+y', { silent = true})
vim.keymap.set("n", "<leader>p", '"+p', { silent = true})

-- Yank to the end of the line
vim.keymap.set("n", "Y", 'y$', { silent = true})

-- Fix increasing number since <C-a> is taken by tmux
vim.keymap.set("n", "<leader>a", "<C-a>", { silent = true})

-- Change word to uppercase
vim.keymap.set("n", "<A-m>", "gUiw", { silent = true})

-- Change CWR to root file directory
vim.keymap.set("n", "<leader>cd", "<cmd>lcd %:p:h<CR><cmd>pwd<CR>", { silent = true})

-- Recover Ctrl - v
vim.keymap.set("n", "<A-v>", "<C-v>", { silent = true })

-- Netrw
vim.keymap.set("n", "<leader>ls",vim.cmd.Ex, { silent = true})


-- Insert Mode
-- NO ARROWS
vim.keymap.set("i", "<Left>", "<cmd>echoe 'Use h'<CR>a", { silent = true})
vim.keymap.set("i", "<Right>", "<cmd>echoe 'Use l'<CR>a", { silent = true})
vim.keymap.set("i", "<Up>", "<cmd>echoe 'Use k'<CR>a", { silent = true})
vim.keymap.set("i", "<Down>", "<cmd>echoe 'Use j'<CR>a", { silent = true})

-- Change word to uppercase
vim.keymap.set("i", "<A-m>", "<ESC>gUiwea", { silent = true})
vim.keymap.set("i", "<A-v>", "<C-v>", { silent = true})


-- Visual Mode
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { silent = true})
vim.keymap.set("v", ">", ">gv", { silent = true})

-- Move text up and down
vim.keymap.set("v", "<A-j>", "<cmd>m '>+1<CR>gv=gv", { silent = true})
vim.keymap.set("v", "<A-k>", "<cmd>m '<-2<CR>gv=gv", { silent = true})

-- Copy and paste to the clipboard. BEST MAPPINGS EVER!!!
vim.keymap.set("v", "<leader>y", '"+y', { silent = true})

-- Terminal Mode
-- Change to normal mode in terminal
vim.keymap.set("t", "<ESC><ESC>", "<C-\\><C-n>", { silent = true})
