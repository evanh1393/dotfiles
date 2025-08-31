return {
    {
        "stevearc/conform.nvim",
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "nvchad.configs.lspconfig" -- load NvChad defaults
            require "custom.configs.lspconfig" -- your overrides
        end,
    },

    {
        "nvimtools/none-ls.nvim",
        event = "VeryLazy",
        config = function()
            require "custom.configs.null-ls"
        end,
    },
}
