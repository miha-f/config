-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local highlight_yank_id = vim.api.nvim_get_autocmds({ group = "lazyvim_highlight_yank" })[1]["id"]
vim.api.nvim_del_autocmd(highlight_yank_id)

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    vim.api.nvim_set_hl(0, "Search", { fg = "#385f38", bg = "#f8f893" })
    vim.api.nvim_set_hl(0, "IncSearch", { fg = "#385f38", bg = "#f8f893" })
  end,
})

-- NOTE(miha): You can use :q to close DiffView panels.
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "DiffviewFiles",
    "DiffviewFilePanel",
    "DiffviewFileHistory",
  },
  callback = function()
    vim.keymap.set("n", "q", "<cmd>DiffviewClose<cr>", {
      buffer = true,
      silent = true,
    })
  end,
})
