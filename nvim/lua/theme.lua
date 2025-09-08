local M = {}
local themes = { "tokyonight", "catppuccin" }
local current = 1

function M.toggle()
  current = current % #themes + 1
  local theme = themes[current]
  vim.cmd.colorscheme(theme)
  print("Switched to " .. theme)
end

return M
