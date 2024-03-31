-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set

vim.keymap.del("n", "<C-Up>", {})
vim.keymap.del("n", "<C-Down>", {})
vim.keymap.del("n", "<C-Left>", {})
vim.keymap.del("n", "<C-Right>", {})

vim.keymap.del("n", "<C-h>", {})
vim.keymap.del("n", "<C-j>", {})
vim.keymap.del("n", "<C-k>", {})
vim.keymap.del("n", "<C-l>", {})

-- Resize window using <ctrl> arrow keys
map("n", "<Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

map("t", "<C-wh>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
map("t", "<C-wj>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
map("t", "<C-wk>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
map("t", "<C-wl>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })

map({ "n", "v" }, "<leader>]", ":Gen<CR>")
-- map({ "n" }, "lhs", function()
--   print("hello world")
-- end)
