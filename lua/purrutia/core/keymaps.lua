-- keymaps.lua
-- mappings defined on lua

-- Modes:
--
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  terminal_mode = "t"
--  command_mode = "c"

-- Disable <Space> in visual and normal Mode
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Normal Mode --
-- Navigation with plugin for TMUX (nvim-tmux-navigation)
-- Resize with arrows
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>", { silent = true })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { silent = true })

-- Navigate buffers
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { silent = true })
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==", { silent = true })

-- NO ARROWS
vim.keymap.set("n", "<Left>", "<cmd>echoe 'Use h'<CR>", { silent = true })
vim.keymap.set("n", "<Right>", "<cmd>echoe 'Use l'<CR>", { silent = true })
vim.keymap.set("n", "<Up>", "<cmd>echoe 'Use k'<CR>", { silent = true })
vim.keymap.set("n", "<Down>", "<cmd>echoe 'Use j'<CR>", { silent = true })

-- Quick Save
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { silent = true })

-- Q in normal mode enters on Ex mode. You almost never want this
vim.keymap.set("n", "Q", "<Nop>", { silent = true })

-- Quicker buffer close
vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>", { silent = true, desc = "Buffer delete" })

-- Copy and paste to the clipboard. BEST MAPPINGS EVER!!!
vim.keymap.set("n", "<leader>y", '"+y', { silent = true, desc = "Copy to clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { silent = true, desc = "Paste from clipboard" })

-- Yank to the end of the line
vim.keymap.set("n", "Y", "y$", { silent = true })

-- Change word to uppercase
vim.keymap.set("n", "<A-m>", "gUiw", { silent = true })

-- Change line to Titlecase
vim.keymap.set(
	"n",
	"<leader>tc",
	"<cmd>s/\\v<(.)(\\k*)/\\u\\1\\L\\2/g<CR>",
	{ silent = true, desc = "Change line to Titlecase" }
)

-- Change CWR to root file directory
vim.keymap.set(
	"n",
	"<leader>cd",
	"<cmd>lcd %:p:h<CR><cmd>pwd<CR>",
	{ silent = true, desc = "Change CWR to root file directory" }
)

-- Recover Ctrl - v
vim.keymap.set("n", "<A-v>", "<C-v>", { silent = true })

-- Search and center
vim.keymap.set("n", "n", "nzzzv", { silent = true, desc = "Search Next and Center" })
vim.keymap.set("n", "N", "Nzzzv", { silent = true, desc = "Search Previous and Center" })

-- source current file
vim.keymap.set("n", "<leader>s", "<cmd>source %<CR>", { desc = "Source current file" })

-- source luasnip file
-- vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>", { desc = "Source luasnip.lua file" })

-- Insert Mode
-- NO ARROWS
vim.keymap.set("i", "<Left>", "<cmd>echoe 'Use h'<CR>a", { silent = true })
vim.keymap.set("i", "<Right>", "<cmd>echoe 'Use l'<CR>a", { silent = true })
vim.keymap.set("i", "<Up>", "<cmd>echoe 'Use k'<CR>a", { silent = true })
vim.keymap.set("i", "<Down>", "<cmd>echoe 'Use j'<CR>a", { silent = true })

-- Change word to uppercase
vim.keymap.set("i", "<A-m>", "<ESC>gUiwea", { silent = true })
vim.keymap.set("i", "<A-v>", "<C-v>", { silent = true })

-- Visual Mode
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { silent = true })
vim.keymap.set("v", ">", ">gv", { silent = true })

-- Macros
vim.keymap.set("x", "Q", ":norm @q<CR>", { desc = "Apply q macro to every visual selected line" })

-- Move text up and down
vim.keymap.set("v", "<A-j>", "<cmd>m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<A-k>", "<cmd>m '<-2<CR>gv=gv", { silent = true })

-- Copy and paste to the clipboard. BEST MAPPINGS EVER!!!
vim.keymap.set("v", "<leader>y", '"+y', { silent = true })

-- Terminal Mode
-- Change to normal mode in terminal
vim.keymap.set("t", "<ESC><ESC>", "<C-\\><C-n>", { silent = true })

-- [[ Diagnostic Keymaps ]]
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- [[ Diary Titles ]]
vim.keymap.set("n", "<leader>tf", "<cmd>.!todayfig<CR>", { desc = "Today's Title" })
vim.keymap.set("n", "<leader>yf", "<cmd>.!yesterdayfig<CR>", { desc = "Yesterday's Title" })

-- Additional keymaps on branch keymap

vim.keymap.set("n", "<leader>v", ":vsp<CR>", { desc = "Vertical Split" })
