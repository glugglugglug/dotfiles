local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Dynamically require all plugin specs from lua/plugins/
local plugin_specs = {}

local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"
for _, file in ipairs(vim.fn.readdir(plugin_dir)) do
  if file:match("%.lua$") then
    local module_name = "plugins." .. file:gsub("%.lua$", "")
    table.insert(plugin_specs, require(module_name))
  end
end

require("lazy").setup(plugin_specs)
