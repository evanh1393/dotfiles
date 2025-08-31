local null_ls = require "null-ls"

local opts = {
    sources = {
        -- Formatters (you have these via Nix)
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.nixpkgs_fmt,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.shfmt,
        -- Linters (you have these via Nix)
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.diagnostics.hadolint, -- Docker linter
        --null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.diagnostics.yamllint,
    },
}

return opts
