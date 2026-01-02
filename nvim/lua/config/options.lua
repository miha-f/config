-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- NOTE(miha): If we have Windows OS.
if vim.fn.has("win32") then
  vim.keymap.set("n", "<C-z>", "<Nop>")
end

opt.wrap = false
opt.ruler = true
opt.showmode = true
opt.wildmenu = true

opt.makeprg = "./build.sh"
opt.wildignore:append({ "*.o", "*.obj", "*.a", "*.lib", "*.exe", "*.pdb", "*.map" })

opt.backup = false
opt.swapfile = false

opt.laststatus = 2

-- opt.number = false
-- opt.relativenumber = false
opt.signcolumn = "yes"
opt.number = false
opt.relativenumber = true
-- opt.signcolumn = "yes:1" -- "number"

opt.list = false
opt.shiftwidth = 4
opt.tabstop = 4

-- set color column at 80 chars
opt.textwidth = 80
opt.colorcolumn = "80"

opt.sidescrolloff = 30

opt.virtualedit = "all"

-- ovverides
vim.g.snacks_animate = false
vim.g.ai_cmp = false
opt.linebreak = false

vim.opt.fillchars:append({ diff = "╱" })
vim.opt.diffopt:append({
  "algorithm:histogram",
  "indent-heuristic",
})
