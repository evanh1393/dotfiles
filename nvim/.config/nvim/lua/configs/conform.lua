local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        vue = { "prettier" },
        json = { "prettier" },
        blade = { "prettier" }, -- Blade support via plugin
        sh = { "shfmt" },
        bash = { "shfmt" },
        dockerfile = { "lsp" },
        yaml = { "prettier" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

require("conform").setup(options)

-- Configure stylua with 4-space indentation
require("conform").formatters.stylua = {
    prepend_args = {
        "--indent-type",
        "Spaces",
        "--indent-width",
        "4",
        "--column-width",
        "120",
    },
}

-- Configure prettier with 4-space indentation
require("conform").formatters.prettier = {
    prepend_args = {
        "--use-tabs",
        "false",
        "--tab-width",
        "4",
    },
}

-- Configure shfmt for bash formatting
require("conform").formatters.shfmt = {
    prepend_args = {
        "-i",
        "2", -- 2 spaces indentation (change to "4" if you prefer 4 spaces)
        "-bn", -- Binary ops like && can start line
        "-ci", -- Indent switch cases
        "-sr", -- Space after redirect operators
        "-kp", -- Keep column alignment paddings
    },
}
