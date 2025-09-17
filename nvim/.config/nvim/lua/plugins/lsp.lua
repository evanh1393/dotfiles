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
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "intelephense" })
      return opts
    end,
  },
}
