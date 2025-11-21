-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Set a global indent width of 4 spaces
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true -- Ensure tabs are spaces

vim.lsp.inlay_hint.enable(false)
