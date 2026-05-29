local M = {}

local transparent = false

local transparent_groups = {
    "Normal",
    "NormalNC",
    -- "NormalFloat",
    "FloatBorder",
    "NonText",
    "SignColumn",
    "FoldColumn",
    "LineNr",
    "EndOfBuffer",
    "StatusLine",
    "StatusLineNC",
    "TabLine",
    "TabLineFill",
    "TabLineSel",
    "VertSplit",
    "WinSeparator",
    "NvimTreeNormal",
    "NvimTreeNormalNC",
    "NvimTreeEndOfBuffer",
}

local function enable()
    for _, group in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end

local function disable()
    local colorscheme = vim.g.colors_name
    if colorscheme:sub(-5) == ".nvim" then
        colorscheme = colorscheme:sub(1, -6)
    end
    vim.cmd("colorscheme " .. colorscheme)
end

function M.toggle()
    transparent = not transparent

    if transparent then
        enable()
    else
        disable()
    end
end

return M
