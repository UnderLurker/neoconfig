-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local indent_group = vim.api.nvim_create_augroup("MyIndentSettings", { clear = true })

-- 默认全局配置（可选）
vim.opt.expandtab = true
vim.opt.listchars = { tab = '→ ', trail = '·' }
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt_local.softtabstop = 4

vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "lua", "ts", "js", "ets" },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "python", "cpp", "c" },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})