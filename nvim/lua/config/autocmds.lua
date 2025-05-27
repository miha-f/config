-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds hereby

local highlight_yank_id = vim.api.nvim_get_autocmds({ group = "lazyvim_highlight_yank" })[1]["id"]
vim.api.nvim_del_autocmd(highlight_yank_id)

-- disable auto inserting comments on new line
-- autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    vim.cmd(
      --au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
      "setlocal formatoptions-=c formatoptions-=r formatoptions-=o formatoptions-=t formatoptions+=q formatoptions+=l"
    )
  end,
})

-- vim.api.nvim_set_hl(0, 'Search', { fg = "#385f38", bg = "#f8f893" })
-- vim.api.nvim_set_hl(0, 'IncSearch', { fg = "#385f38", bg = "#f8f893" })
-- vim.cmd.hi('Search guifg=#385f38 guibg=#f8f893')
-- vim.cmd.hi('IncSearch guifg=#385f38 guibg=#f8f893')
-- vim.api.nvim_set_hl(0, 'Search', { })
-- vim.api.nvim_set_hl(0, 'Visual', { fg = "#d1b897", bg = "Blue" })
-- vim.api.nvim_set_hl(0, 'VisualNOS', { fg = "#d1b897", bg = "Blue" })
-- hi Visual guifg=#d1b897 guibg=Blue guisp=Blue gui=NONE ctermfg=NONE ctermbg=240 cterm=NONE

-- vim.api.nvim_set_hl(0, 'FlashMatch', { fg = "#385f38", bg = "#fffec4", })
-- vim.api.nvim_set_hl(0, 'FlashCurrent', { fg = "#385f38", bg = "#ffd6a5", })
-- vim.api.nvim_set_hl(0, 'FlashLabel', { fg = "#385f38", bg = "#ff9b9b", })
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    -- vim.cmd.hi('Search guifg=#385f38 guibg=#f8f893')
    -- vim.cmd.hi('IncSearch guifg=#385f38 guibg=#f8f893')

    vim.api.nvim_set_hl(0, "Search", { fg = "#385f38", bg = "#f8f893" })
    vim.api.nvim_set_hl(0, "IncSearch", { fg = "#385f38", bg = "#f8f893" })
    -- vim.api.nvim_set_hl(0, 'Visual', { fg = "#03589c", bg = "#96b6c5" })
    -- vim.api.nvim_set_hl(0, 'VisualNOS', { fg = "#d1b897", bg = "Blue" })

    vim.api.nvim_set_hl(0, "FlashMatch", { fg = "#385f38", bg = "#fffec4" })
    vim.api.nvim_set_hl(0, "FlashCurrent", { fg = "#385f38", bg = "#fffec4" })
    -- vim.api.nvim_set_hl(0, 'FlashCurrent', { fg = "#385f38", bg = "#ffd6a5", })
    -- vim.api.nvim_set_hl(0, 'FlashLabel', { fg = "#03589c", bg = "#96b6c5" })
    vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#385f38", bg = "#ff9b9b" })
  end,
})
