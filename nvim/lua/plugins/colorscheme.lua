return {
  { "EdenEast/nightfox.nvim", priority = 1000 },
  { "sainnhe/everforest", priority = 1000 },
  { "loctvl842/monokai-pro.nvim", priority = 1000 },
  { "rebelot/kanagawa.nvim", priority = 1000 },
  { "rose-pine/neovim", name = "rose-pine", priority = 1000 },
  { "sainnhe/gruvbox-material", priority = 1000 },
  { "nyoom-engineering/oxocarbon.nvim", priority = 1000 },
  { "scottmckendry/cyberdream.nvim", priority = 1000 },
  {
    "LazyVim/LazyVim",
    config = function()
      vim.cmd([[colorscheme everforest]])
    end,
  },
}
