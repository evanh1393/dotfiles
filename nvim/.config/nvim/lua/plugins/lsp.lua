return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = false,
        intelephense = {
          init_options = {
            licenceKey = vim.fn.expand("~/.config/intelephense/licence.txt"),
          },
        },
      },
    },
  },
}
