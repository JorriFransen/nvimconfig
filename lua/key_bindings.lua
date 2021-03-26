
local util = require("util")

-- Window navigation
util.noremap("<leader>h", ":wincmd h<CR>")
util.noremap("<leader>l", ":wincmd l<CR>")
util.noremap("<leader>j", ":wincmd j<CR>")
util.noremap("<leader>k", ":wincmd k<CR>")
util.noremap("<leader>wv", ":vsplit<cr>")
util.noremap("<leader>ws", ":split<cr>")
-- Move window to a new tab
util.noremap("<leader>tt", ":wincmd T<CR>")

-- Stay in visual mode after indenting
util.vnoremap("<", "<gv")
util.vnoremap(">", ">gv")

-- Tab navigation
util.noremap("<leader>th", ":tabp<CR>")
util.noremap("<leader>tp", ":tabp<CR>")
util.noremap("<leader>tl", ":tabn<CR>")
util.noremap("<leader>tn", ":tabn<CR>")
util.noremap("<leader>tq", ":tabc<CR>")

-- Buffer navigation
util.noremap("<leader>b", ":buffer<Space>")

function Executor()
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
util.nnoremap("<leader>x", ":lua Executor()<CR>")

function Source_current_buffer()
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
util.nnoremap("<leader>r", ":lua Source_current_buffer()<CR>")


-- Compilation
util.nnoremap("<F5>", ":call Compile()<CR>")
util.inoremap("<F5>", "<esc>: call Compile()<CR>")

function Toggle_quickfix()
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

util.nnoremap("<leader>cd", ":lua Toggle_quickfix()<CR>")

-- Quickfix
util.nnoremap("<leader>en", ":cn<cr>")
util.nnoremap("<C-j>", ":cn<cr>")
util.nnoremap("<leader>ep", ":cp<cr>")
util.nnoremap("<C-k>", ":cp<cr>")

-- Toggle search highlight
util.nnoremap("<leader>thh", ":lua toggle_search_highlight()<CR>")
