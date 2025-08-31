-- Fix annoying diagnostics
vim.diagnostic.config {
    virtual_text = {
        severity = vim.diagnostic.severity.ERROR, -- Only show errors
    },
    signs = {
        severity = vim.diagnostic.severity.ERROR, -- Only show error signs
    },
    underline = {
        severity = vim.diagnostic.severity.ERROR, -- Only underline errors
    },
    update_in_insert = false, -- Don't show diagnostics while typing
    severity_sort = true,
}

-- Enable system clipboard
vim.opt.clipboard = "unnamedplus"
