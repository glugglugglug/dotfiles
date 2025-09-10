return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {}, -- optional: leave empty or configure inline
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
