-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local os_info = vim.fn.system("uname -a")

if string.find(os_info, "Windows") then
  vim.cmd([[
  autocmd BufEnter *.slint :setlocal filetype=slint
  " autocmd VimEnter * !im-select.exe 1033
  autocmd InsertEnter * :silent :!im-select.exe 2052
  autocmd InsertLeave * :silent :!im-select.exe 1033
  autocmd VimLeave * :silent: :!im-select.exe 2052

  ]])
else
  vim.cmd([[
  " autocmd VimEnter * :silent :!ibus engine xkb:us::eng
  " autocmd InsertEnter * :silent :!ibus engine libpinyin
  " autocmd InsertLeave * :silent :!ibus engine xkb:us::eng
  " autocmd VimLeave * :silent: :!ibus engine libpinyin

  autocmd InsertLeave * :silent :!fcitx5-remote -c
  ]])
end
