vim.diagnostic.config {
    virtual_text = {
        severity = { min = vim.diagnostic.severity.ERROR }, -- only show errors inline
    },
    signs = {
        severity = { min = vim.diagnostic.severity.ERROR }, -- only error signs
    },
    underline = {
        severity = { min = vim.diagnostic.severity.ERROR }, -- only underline errors
    },
    update_in_insert = false, -- Don't show diagnostics while typing
    severity_sort = true,
}

vim.opt.clipboard = "unnamedplus"
