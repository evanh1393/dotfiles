return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            -- Core parsers
            "vim",
            "lua",
            "vimdoc",
            -- Web development
            "html",
            "css",
            "javascript",
            "typescript",
            -- PHP and Laravel
            "php",
            "blade",
            -- Add any other parsers you need
        },
    },
}
