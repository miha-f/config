return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<C-7>]],
        direction = 'float',
       float_opts = {
        border = "curved",
        winblend = 0, -- Transparency often causes rendering crashes in Tmux
      },
      })
    end
  }
}
