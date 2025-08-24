return {
  "neovim/nvim-lspconfig",
  config = function()
    require "nvchad.configs.lspconfig"
    require "custom.configs.lspconfig"  -- Load your custom LSP config
  end,
}
