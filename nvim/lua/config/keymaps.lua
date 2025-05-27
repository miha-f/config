-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- inoremap <C-x><C-o> <Cmd>lua require('cmp').complete()<CR>
-- local Util = require("lazyvim.util")

vim.keymap.set("i", "<C-x><C-o>", "<cmd>lua require('cmp').complete()<CR>", { desc = "autocomplete", remap = true })
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- NOTE(miha: Setup telescope find all files (don't use .gitignore).
-- vim.keymap.set("n", "<leader>fa", function() Util.telescope("files", {no_ignore = true}) end, {desc="find all fileas (root dir)"})
-- vim.keymap.set("n", "<leader>fA", function() Util.telescope("files", {cwd=false, no_ignore = true}) end, {desc="find all files (cwd)"})
-- vim.keympa.set("n", "<leader><space>", Util.telescope("files", { cwd = true }), { desc = "find all files (cwd)" })
