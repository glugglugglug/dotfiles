return {
  "folke/which-key.nvim",
	lazy = false,
	priority = 1000,
  keys = {
{
    "<leader>/",
    mode = "n",
    function() require("which-key").show({ global = false }) end,
    desc = "Buffer Local Keymaps (which-key)",
  },
  },
  opts = {
    plugins = {
      spelling = {
        enabled = true,
        suggestions = 20,
      },
    },
    win = {
      border = "single",
      position = "bottom",
      margin = { 1, 0, 1, 0 },
      padding = { 2, 2, 2, 2 },
      winblend = 0,
    },
    layout = {
      height = { min = 4, max = 25 },
      width = { min = 20, max = 50 },
      spacing = 4,
      align = "left",
    },
    triggers = {
      { "<leader>", mode = { "n", "v" } },
    },
    defer = function(ctx)
      if vim.list_contains({ "d", "y" }, ctx.operator) then
        return true
      end
      return vim.list_contains({ "<C-V>", "V" }, ctx.mode)
    end,
  },
	config = function(_, opts)
	  local wk = require("which-key")
	  wk.setup(opts)

	  wk.add({
	    { "<leader>e", group = "explorer" },
	    { "<leader>ec", "<cmd>NvimTreeCollapse<CR>", desc = "Collapse Explorer" },
	    { "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "Toggle File Explorer" },
	    { "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", desc = "Focus Current File" },
	    { "<leader>er", "<cmd>NvimTreeRefresh<CR>", desc = "Refresh Explorer" },
	    { "<leader>f", group = "file" },
	    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find File" },
	    { "<leader>fn", "<cmd>enew<CR>", desc = "New File" },
	    { "<leader>fr", "<cmd>Telescope oldfiles<CR>", desc = "Recent Files" },
	    { "<leader>g", group = "git" },
	    { "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle Blame" },
	    { "<leader>gs", "<cmd>Git<CR>", desc = "Git Status" },
	    { "<leader>u", group = "ui" },
	    { "<leader>ut", function() require("theme").toggle() end, desc = "Toggle Theme" },
	  })
	end
}
