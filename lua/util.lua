
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


return M
