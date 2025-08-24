return {
  "folke/todo-comments.nvim",
  opts = {
    -- signs = false, -- dont show icons in sign/number column.
    highlight = {
      pattern = {
        [[.*<(KEYWORDS)\s*:]],
        [[.*<(KEYWORDS)\s*\(]],
      },
      before = "",
      keyword = "bg",
      after = "",
    },
    search = {
      pattern = [[\b(KEYWORDS)(:|\()]],
    },
    keywords = {
      WARN = { icon = " ", color = "error", alt = { "WARNING", "XXX", "CARE", "IMPORTANT" } },
      HACK = { color = "hack" },
      PERF = { color = "perf" },
    },

    colors = {
      info = { "#fcf27e" }, -- TODO( "#f5f0bb"
      hint = { "#9ade64" }, -- NOTE( "#c8e4b2"
      warning = { "#ffcacc" }, -- WARN(
      -- error = {""}, -- FIX(
      hack = { "#96b6c5" }, -- HACK(
      perf = { "#96b6c5" }, -- PERF(
      test = { "#f1f0e8" }, -- TEST(
    },
  },
}
