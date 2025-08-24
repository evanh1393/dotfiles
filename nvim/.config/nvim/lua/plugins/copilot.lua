return {
    -- Copilot core
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup {
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    debounce = 75,
                    keymap = {
                        accept = "<C-j>",
                        accept_word = false,
                        accept_line = false,
                        next = "<M-]>",
                        prev = "<M-[>",
                        dismiss = "<C-]>",
                    },
                },
                panel = { enabled = false },
                filetypes = {
                    markdown = true,
                    help = false,
                },
            }
        end,
    },

    -- Hook Copilot into nvim-cmp
    {
        "zbirenbaum/copilot-cmp",
        dependencies = { "zbirenbaum/copilot.lua" },
        config = function()
            require("copilot_cmp").setup()
        end,
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        branch = "main",
        cmd = { "CopilotChat", "CopilotChatExplain", "CopilotChatReview", "CopilotChatTests" }, -- make commands available
        dependencies = {
            { "zbirenbaum/copilot.lua" },
            { "nvim-lua/plenary.nvim" },
        },
        opts = {
            window = {
                layout = "vertical", -- PhpStorm-like sidebar
                width = 0.3,
                height = 0.9,
            },
        },
    },
}
