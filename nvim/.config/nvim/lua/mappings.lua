require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>"

-- Symbols Outline
map("n", "<leader>cs", "<cmd>SymbolsOutline<cr>", { desc = "Toggle Symbols Outline" })
