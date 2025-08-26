require "nvchad.autocmds"

-- Blade file detection
vim.filetype.add {
    extension = {
        blade = "blade",
    },
    pattern = {
        [".*%.blade%.php"] = "blade",
    },
}

-- Auto-detect blade files
local augroup = vim.api.nvim_create_augroup("BladeFiletype", { clear = true })
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    group = augroup,
    pattern = "*.blade.php",
    callback = function()
        vim.bo.filetype = "blade"
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    callback = function()
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
        vim.opt_local.expandtab = true
    end,
})
