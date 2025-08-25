---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "tokyonight",
    hl_override = {
        Normal = { bg = "none" },
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
    },
}

M.nvdash = { load_on_startup = true }
M.ui = {
    transparency = true,
    tabufline = {
        lazyload = false,
    },
}
vim.opt.clipboard = "unnamedplus"
return M
