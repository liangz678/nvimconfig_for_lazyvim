-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
local opt = vim.opt
opt.wrap = true
opt.showbreak = "↪"

vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.lazyvim_python_ruff = "ruff"

vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font Mono" -- Put anything you want to happen only in Neovide here
  vim.g.neovide_cursor_trail_size = 0
end
