
local M = {}

local function check_options(options)
    if options == nil then
        return {}
    end

    if type(options) ~= "table" then
        error("Type of options must be a table", 3)
    end
    return options
end

function M.map(mode, lhs, rhs, options)
    options = check_options(options)
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M._noremap(mode, lhs, rhs, options)
    options = check_options(options)
    options.noremap = true
    M.map(mode, lhs, rhs, options)
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


return M
