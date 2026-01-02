return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewFileHistory",
  },
  keys = {
    -- core
    { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Diffview: open" },
    { "<leader>gV", "<cmd>DiffviewClose<cr>", desc = "Diffview: close" },

    -- history
    { "<leader>gF", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview: file history" },
    { "<leader>gR", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview: repo history" },

    -- branch / commit diffs
    { "<leader>gmm", "<cmd>DiffviewOpen origin/main...HEAD<cr>", desc = "Diffview: vs main" },
    { "<leader>gmd", "<cmd>DiffviewOpen origin/dev...HEAD<cr>", desc = "Diffview: vs dev" },
    { "<leader>gmh", "<cmd>DiffviewOpen HEAD~1<cr>", desc = "Diffview: prev commit" },

    -- conflict navigation
    {
      "]x",
      function()
        require("diffview.actions").next_conflict()
      end,
      desc = "Diffview: next conflict",
    },
    {
      "[x",
      function()
        require("diffview.actions").prev_conflict()
      end,
      desc = "Diffview: prev conflict",
    },

    -- conflict choose
    {
      "<leader>gcl",
      function()
        require("diffview.actions").conflict_choose("ours")
      end,
      desc = "Diffview: choose ours",
    },
    {
      "<leader>gcr",
      function()
        require("diffview.actions").conflict_choose("theirs")
      end,
      desc = "Diffview: choose theirs",
    },
    {
      "<leader>gcb",
      function()
        require("diffview.actions").conflict_choose("base")
      end,
      desc = "Diffview: choose base",
    },

    {
      "<leader>gco",
      function()
        vim.cmd("Diffget LOCAL")
        vim.cmd("Diffget REMOTE")
      end,
      desc = "Diffview: merge ours + theirs",
    },
  },
  opts = {
    use_tabpage = false,
    enhanced_diff_hl = true,
    use_icons = true,
    restore_cwd = true,

    view = {
      merge_tool = {
        layout = "diff3_mixed",
        disable_diagnostics = true,
      },
      default = {
        layout = "diff2_horizontal",
      },
    },

    file_panel = {
      win_config = {
        position = "left",
        width = 30,
      },
    },
  },
}
