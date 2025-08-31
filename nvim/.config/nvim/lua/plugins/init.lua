return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    -- Add spell checking
    {
        "davidmh/cspell.nvim",
        enabled = false,
        lazy = false,
        config = function()
            require("cspell").setup {
                config_file_preferred_name = "cspell.json",
            }
        end,
    },
    {
        "nvimtools/none-ls.nvim",
        event = "VeryLazy",
        opts = function()
            return require "custom.configs.none-ls"
        end,
    },
}
