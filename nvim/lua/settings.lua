local opt = vim.opt
local g = vim.g

-- Vim behavior
opt.number = true
opt.relativenumber = true
opt.laststatus = 2
opt.backspace = { "indent", "eol", "start" }
opt.hidden = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.shortmess:append("I")
opt.mouse:append("a")
opt.clipboard = "unnamedplus"
opt.termguicolors = true

-- Syntax highlighting
vim.cmd("syntax on")

-- Disable bells
opt.errorbells = false
opt.visualbell = true
vim.cmd("set t_vb=")

-- Vi compatibility off (redundant in Neovim, but for completeness)
vim.cmd("set nocompatible")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank -i --crlf",
    ["*"] = "win32yank -i --crlf",
  },
  paste = {
    ["+"] = "win32yank -o --lf",
    ["*"] = "win32yank -o --lf",
  },
  cache_enabled = 0,
}


