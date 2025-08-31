return {
    {
        "stevearc/conform.nvim",
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "nvchad.configs.lspconfig" -- load NvChad defaults
            require "custom.configs.lspconfig" -- load your overrides
        end,
    },

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
