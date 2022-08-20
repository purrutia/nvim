-- Configure the statusline

local function get_mode_name(mode)

  local modes = {
    ["n"] = "NORMAL",
    ["no"] = "NORMAL",
    ["v"] = "VISUAL",
    ["V"] = "VISUAL LINE",
    [""] = "VISUAL BLOCK",
    ["s"] = "SELECT",
    ["S"] = "SELECT LINE",
    [""] = "SELECT BLOCK",
    ["i"] = "INSERT",
    ["ic"] = "INSERT",
    ["R"] = "REPLACE",
    ["Rv"] = "VISUAL REPLACE",
    ["c"] = "COMMAND",
    ["cv"] = "VIM EX",
    ["ce"] = "EX",
    ["r"] = "PROMPT",
    ["rm"] = "MOAR",
    ["r?"] = "CONFIRM",
    ["!"] = "SHELL",
    ["t"] = "TERMINAL",
  }
  local the_mode = modes[mode]

  if string.find(the_mode, "INSERT") then
    the_mode = "%#IncSearch#" .. " [ " .. the_mode .. " ] ".. "%#PmenuSel#"
  elseif string.find(the_mode, "VISUAL") then
    the_mode = "%#DiffChange#" .. " [ " .. the_mode .. " ] ".. "%#PmenuSel#"
  else
    the_mode = "%#StatusLine#" .. " [ " .. the_mode .. " ] ".. "%#PmenuSel#"
  end
  return the_mode
end


-- vim.cmd("highlight StatusLine guibg=#a7c080 guifg=#5c6a72")
function Status_line()
  return table.concat {
    "",
    "%#PmenuSel#",
    "%<",
    get_mode_name(vim.fn.mode()),
    " ",
    "%h",
    "%=",
    "%m",
    " ",
    "%f",
    " ",
    "%=",
    "%y ",
    "(%l,%c)",
    " ",
    "%P",
    " ",
  }
end

vim.o.statusline = "%!luaeval('Status_line()')"
