---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "tokyonight",
    hl_override = {
        Normal = { bg = "none" },
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
    },
}

M.nvdash = { load_on_startup = true }

M.ui = {
    transparency = true,
    tabufline = {
        lazyload = false,
    },
    statusline = {
        theme = "default",
        separator_style = "default",
        overriden_modules = function(modules)
            -- Override the LSP module to show relevant LSP for current buffer
            modules[4] = function()
                local clients = vim.lsp.get_active_clients { bufnr = vim.api.nvim_get_current_buf() }
                local client_names = {}

                -- Filter out copilot and other non-language servers
                for _, client in pairs(clients) do
                    if client.name ~= "copilot" and client.name ~= "null-ls" and client.name ~= "nvim_lua" then
                        table.insert(client_names, client.name)
                    end
                end

                if #client_names == 0 then
                    return ""
                end

                return "%#St_Lsp#" .. " LSP ~ " .. table.concat(client_names, ", ") .. " "
            end

            return modules
        end,
    },
}

vim.opt.clipboard = "unnamedplus"

return M
