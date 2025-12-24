-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local m = vim.keymap

m.set("i", "jk", "<esc>")
m.set("n", "<leader>w", "<cmd>w<CR>")

-- make sure undotree plugin is installed
vim.api.nvim_set_keymap("n", "<F5>", ":UndotreeToggle<CR>", { noremap = true, silent = true })
