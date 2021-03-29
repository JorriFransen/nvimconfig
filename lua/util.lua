
local M = {}
M.string = {}

local function check_options(options)
  if options == nil then
    return {}
  end

  if type(options) ~= "table" then
    error("Type of options must be a table", 3)
  end
  return options
end

function M._map(mode, lhs, rhs, options)
  options = check_options(options)
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.map(lhs, rhs, options)
  options = check_options(options)
  M._map("", lhs, rhs, options)
end

function M._noremap(mode, lhs, rhs, options)
  options = check_options(options)
  options.noremap = true
  M._map(mode, lhs, rhs, options)
end

function M.noremap(lhs, rhs, options)
  options = check_options(options);
  M._noremap("", lhs, rhs, options)
end

function M.nnoremap(lhs, rhs, options)
  options = check_options(options)
  M._noremap("n", lhs, rhs, options)
end

function M.inoremap(lhs, rhs, options)
  options = check_options(options)
  M._noremap("i", lhs, rhs, options)
end

function M.vnoremap(lhs, rhs, options)
  options = check_options(options)
  M._noremap("v", lhs, rhs, options)
end

function M.string.split(in_str, sep)
  if sep == nil then
      sep = "%s"
  end

  local t = {}
  for str in string.gmatch(in_str, "([^"..sep.."]+)") do
      table.insert(t, str)
  end

  return t
end

function _G.toggle_search_highlight()
  vim.o.hlsearch = not vim.o.hlsearch
end

function _G.toggle_quickfix()
  local wininfos = vim.api.nvim_eval("getwininfo()")

  local quickfix_open = false
  for i,_ in ipairs(wininfos) do
    if wininfos[i].quickfix ~= 0 then
      quickfix_open = true
        break
      end
  end

  if not quickfix_open then
    vim.cmd("botright copen")
    vim.cmd("resize 14")
    vim.cmd("wincmd p")
  else
    vim.cmd("cclose")
  end
end

function _G.source_current_buffer()
  local ft = vim.bo.filetype

  vim.cmd("silent! write")
  if ft == "vim" then
    vim.cmd("source %")
  elseif ft == "lua" then
    vim.cmd("luafile %")
  else
    error("Unsupported filetype: '" .. ft .. "'", 3)
  end
end

function _G.execute_current_line()
  local ft = vim.bo.filetype

  local line_nr = vim.api.nvim_win_get_cursor(0)[1]
  local line = vim.api.nvim_buf_get_lines(0, line_nr - 1, line_nr, true)[1]

  if ft == "lua" then
    local f = loadstring(line)
    f()
  elseif ft == "vim" then
    vim.cmd(line)
  else
    error("Unsupported filetype: '" .. ft .. "'", 3)
  end
end

return M
