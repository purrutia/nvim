-- telescope.lua
-- telescope configs

local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

telescope.setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      -- Insert Mode
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = actions.which_key,
        ["<C-q>"] = actions.send_to_qflist,
      },
      n = {
        -- Normal Mode
        ["<C-h>"] = actions.which_key,
        ["<C-q>"] = actions.send_to_qflist,
      },
    },
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    fzf = {
      fuzzy = true,                     -- false will only do exact matching
      override_generic_sorter = true,   -- override the generic sorter
      override_file_sorter = true,      -- override the file sorter
      case_mode = "smart_case",         -- or "ignore_case" or "respect_case"
                                        -- the default case_mode is "smart_case"
    },
  }
}

telescope.load_extension('fzf')

-- Telescope mappings
local keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

keymap("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", options)
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", options)
keymap("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", options)
keymap("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", options)
keymap("n", "<leader>fc", "<cmd>lua require('telescope.builtin').colorscheme()<CR>", options)
keymap("n", "<leader>ie", "<cmd>lua require('nvim_config.telescope').search_configfiles()<CR>", options)
keymap("n", "<leader>fp", "<cmd>lua require('nvim_config.telescope').search_project()<CR>", options)


-- Use Telescope to go to the configfiles
local M = {}
M.search_configfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< VimRC >",
    cwd = "~/repos/github.com/purrutia/nvim-config/",
  })
end

M.search_project = function()
  require("telescope.builtin").find_files({
    prompt_title = "< DAS Concentradora >",
    cwd = "/mnt/g/My Drive/PROJECTS/Codelco/20211130 CDLC - Proyecto Concentradora Traspaso/06. Work/04. Documentos/",
  })
end

return M

