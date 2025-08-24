return {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
        require "configs.conform" -- Note: changed from "custom.configs.conform"
    end,
}
