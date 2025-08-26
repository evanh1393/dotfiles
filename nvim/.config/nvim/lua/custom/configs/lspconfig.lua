local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- PHP LSP
lspconfig.intelephense.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- TypeScript/JavaScript LSP
lspconfig.tsserver.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- Python LSP
lspconfig.pyright.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- Nix LSP
lspconfig.nil_ls.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

-- Bash LSP
lspconfig.bashls.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    filetypes = { "sh", "bash" },
    settings = {
        bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command)",
        },
    },
}
