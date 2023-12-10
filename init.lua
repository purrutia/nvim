-- Set <space> as the Leader key
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- CONFIGS
require("purrutia.core")
require("purrutia.lazy") -- plugin manager
