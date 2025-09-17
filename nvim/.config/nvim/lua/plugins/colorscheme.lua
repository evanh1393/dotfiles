return {
  -- Everforest colorscheme
  {
    "sainnhe/everforest",
    lazy = false, -- Load during startup
    priority = 1000, -- Load before other plugins
    config = function()
      -- Configure everforest before loading
      vim.g.everforest_background = "medium" -- 'hard', 'medium', 'soft'
      vim.g.everforest_better_performance = 1
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_disable_italic_comment = 0
      vim.g.everforest_transparent_background = 0 -- Set to 1 for transparent background
      vim.g.everforest_current_word = "grey background"

      -- Set the colorscheme
      vim.cmd.colorscheme("everforest")
    end,
  },

  -- Configure LazyVim to use everforest
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
