return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      name = { ".venv", "venv", "env" },
      auto_activate = true,
    },
    event = "BufEnter *.py",
  },
}
