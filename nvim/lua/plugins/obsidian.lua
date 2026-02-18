return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  keys = {
    { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "New Obsidian Note" },
    { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Search Obsidian Notes" },
    { "<leader>ot", "<cmd>ObsidianTemplate<cr>", desc = "Insert Template" },
    { "<leader>of", "<cmd>ObsidianFollowLink<cr>", desc = "Follow Link" },
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/obsidian_vault",
      },
    },

    notes_subdir = "Inbox (zettelkasten new notes)",
    new_notes_location = "notes_subdir",

    -- Simplified: Just returns the title you provide
    note_id_func = function(title)
      if title ~= nil then
        return title
      else
        -- Fallback if you run :ObsidianNew without a title
        return "Untitled-" .. tostring(os.time())
      end
    end,

    ui = {
      enable = true,
      update_debounce = 200,
      bullets = { char = "•", hl_group = "ObsidianBullet" },
      checkboxes = {
        [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { char = "", hl_group = "ObsidianDone" },
      },
    },

    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
  },
}
