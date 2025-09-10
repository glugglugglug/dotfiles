local wk = require("which-key")

wk.setup({
  plugins = {
    marks = true,
    registers = true,
    spelling = {
      enabled = true,
      suggestions = 20,
    },
    presets = {
      operators = true,
      motions = true,
      text_objects = true,
      windows = true,
      nav = true,
      z = true,
      g = true,
    },
  },
  key_labels = {},
  icons = {
    breadcrumb = "»",
    separator = "➜",
    group = "+",
  },
  popup_mappings = {
    scroll_down = "<c-d>",
    scroll_up = "<c-u>",
  },
  window = {
    border = "rounded",
    position = "bottom",
    margin = { 1, 0, 1, 0 },
    padding = { 2, 2, 2, 2 },
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 3,
    align = "left",
  },
  ignore_missing = true,
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
  show_help = true,
  triggers = { "<auto>", mode = "nxso" },
  triggers_blacklist = {
    i = { "j", "k" },
    v = { "j", "k" },
  },
})

-- ✅ Group labels for <leader> mappings
wk.add({
  { "<leader>e", group = "explorer" },
  { "<leader>f", group = "file" },
  { "<leader>g", group = "git" },
  { "<leader>u", group = "ui" },
  { "<leader>p", group = "plugins" },
  { "<leader>k", group = "kill" },
  { "<leader>q", group = "quit" },
  { "<leader>w", group = "write" },
})
