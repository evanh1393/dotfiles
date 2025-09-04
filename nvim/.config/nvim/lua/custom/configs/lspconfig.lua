print "=== LOADING CUSTOM LSP CONFIG ===" -- Add this at the top

local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

-- Enhanced on_attach with better diagnostics
local function enhanced_on_attach(client, bufnr)
    on_attach(client, bufnr)
    -- Enable more aggressive diagnostics
    vim.diagnostic.config {
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = true, -- Show diagnostics while typing
        severity_sort = true,
    }
end

-- Lua LSP (you have lua-language-server installed)
lspconfig.lua_ls.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- PHP LSP
lspconfig.intelephense.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
        intelephense = {
            diagnostics = {
                undefinedVariables = true,
                undefinedFunctions = true,
                undefinedConstants = true,
                undefinedClassConstants = true,
                undefinedMethods = true,
                undefinedProperties = true,
            },
        },
    },
}

-- JS/TS
lspconfig.ts_ls.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- Python LSP (you have python-lsp-server, not pyright)
lspconfig.pylsp.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = { enabled = false },
                mccabe = { enabled = false },
                pyflakes = { enabled = true },
                pylint = { enabled = false },
                rope_completion = { enabled = true },
                jedi_completion = { enabled = true },
                jedi_hover = { enabled = true },
                jedi_references = { enabled = true },
                jedi_signature_help = { enabled = true },
                jedi_symbols = { enabled = true },
            },
        },
    },
}

-- Go LSP
lspconfig.gopls.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                shadow = true,
            },
            staticcheck = true,
        },
    },
}

-- Vue LSP
lspconfig.volar.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- Nix LSP
lspconfig.nil_ls.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- Bash LSP
lspconfig.bashls.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
    filetypes = { "sh", "bash" },
}

-- Docker LSP
lspconfig.dockerls.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- YAML LSP
lspconfig.yamlls.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- Fish LSP
lspconfig.fish_lsp.setup {
    on_attach = enhanced_on_attach,
    on_init = on_init,
    capabilities = capabilities,
    filetypes = { "fish" },
}

-- Force Go files to use 4-wide real tabs
vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
        vim.opt_local.expandtab = false -- real tabs, not spaces
        vim.opt_local.tabstop = 4 -- tab displays as 4 spaces wide
        vim.opt_local.shiftwidth = 4
        vim.opt_local.softtabstop = 4
    end,
})
