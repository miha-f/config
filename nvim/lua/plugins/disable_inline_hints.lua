-- NOTE(miha): Inline hints are virtual text that says the name of parameters,
-- return type, ... It is distracting...
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
