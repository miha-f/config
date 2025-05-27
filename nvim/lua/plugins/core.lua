local Util = require("lazyvim.util")

return {
  -- NOTE(miha): Here we are adding some coloschemes

  -- add zenburn
  -- { "jnurmine/Zenburn" },
  -- add neovim supported zenburn (TS, ...)
  { "phha/zenburn.nvim" },

  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

  -- add gruvbox-material
  { "sainnhe/gruvbox-material" },

  -- add sonokai
  { "https://github.com/sainnhe/sonokai" },

  -- add everforest
  {
    "https://github.com/sainnhe/everforest",
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.everforest_enable_italic = true
      vim.cmd.colorscheme("everforest")
    end,
  },

  -- add bamboo
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   require("bamboo").setup({
    --     -- optional configuration here
    --   })
    --   require("bamboo").load()
    -- end,
  },

  -- add gruvbox-baby
  { "luisiacc/gruvbox-baby" },

  -- add vacme
  { "overvale/vacme" },

  -- add kanagawa
  { "rebelot/kanagawa.nvim" },

  -- add carbonized
  { "haystackandroid/carbonized" },

  -- add zenbones
  { "mcchrish/zenbones.nvim" },

  -- add nightfox
  { "EdenEast/nightfox.nvim" },

  -- add onebuddy
  { "Th3Whit3Wolf/onebuddy" },

  -- add tender
  { "jacoborus/tender.vim" },

  -- add modus
  { "ishan9299/modus-theme-vim" },

  -- add melange
  { "savq/melange-nvim" },

  -- add neon
  { "rafamadriz/neon" },

  -- add papercolor
  { "NLKNguyen/papercolor-theme" },

  -- add tokyonight
  { "folke/tokyonight.nvim" },

  -- add monokai
  { "loctvl842/monokai-pro.nvim" },

  -- add seoul256
  { "shaunsingh/seoul256.nvim" },

  -- NOTE(miha): some colorschemes requires lush
  { "rktjmp/lush.nvim" },

  -- add vim fugitive
  -- { "tpope/vim-fugitive" },

  -- add neomake (better :make command)
  { "https://github.com/neomake/neomake" },

  -- add vim diff
  { "sindrets/diffview.nvim" },

  -- add multicursors
  -- {
  --   "smoka7/multicursors.nvim",
  --   event = "VeryLazy",
  --   dependencies = {
  --     "smoka7/hydra.nvim",
  --   },
  --   opts = {},
  --   cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
  --   keys = {
  --     {
  --       mode = { "v", "n" },
  --       "<Leader>m",
  --       "<cmd>MCstart<cr>",
  --       desc = "Create a selection for selected text or word under the cursor",
  --     },
  --   },
  -- },

  -- NOTE(miha)
  -- configure LazyVim to load zenburn
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "zenburn",
      -- colorscheme = "monokai-pro-default",
      -- colorscheme = "gruvbox-baby",
      -- colorscheme = "catppuccin-frappe",
      colorscheme = "everforest",

      -- colorscheme = "kanagawa",
      -- background = "light",
    },
  },

  -- NOTE(miha): Install neovim obsidian plugin
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = false,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "obsidian_vault",
          path = "~/obsidian_vault",
        },
      },

      picker = {
        -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
        name = "telescope.nvim",
        -- Optional, configure key mappings for the picker. These are the defaults.
        -- Not all pickers support all mappings.
        note_mappings = {
          -- Create a new note from your query.
          new = "<C-x>",
          -- Insert a link to the selected note.
          insert_link = "<C-l>",
        },
        tag_mappings = {
          -- Add tag(s) to current note.
          tag_note = "<C-x>",
          -- Insert a tag at the current location.
          insert_tag = "<C-l>",
        },
      },

      -- Optional, sort search results by "path", "modified", "accessed", or "created".
      -- The recommend value is "modified" and `true` for `sort_reversed`, which means, for example,
      -- that `:ObsidianQuickSwitch` will show the notes sorted by latest modified time
      sort_by = "modified",
      sort_reversed = true,

      notes_subdir = "Notes (zettelkasten)",
      new_notes_location = "Inbox (zettelkasten new notes)",

      disable_frontmatter = true,

      templates = {
        folder = "Templates",
        -- {{date:YYYYMMDD}}{{time::HHMM}}
        date_format = "%Y%m%d",
        time_format = "%H%M",
        -- A map for custom variables, the key should be the variable and the value a function
      },

      -- completion = {
      --   -- Set to false to disable completion.
      --   nvim_cmp = true,
      --   -- Trigger completion at 2 chars.
      --   min_chars = 2,
      -- },

      -- see below for full list of options 👇
    },
  },

  -- NOTE(miha): Edited in config/lazy.lua
  -- {
  --   "folke/lazy.nvim",
  --   opts = {
  --       change_detection = {
  --           enabled = false,
  --           notify = false, -- get a notification when changes are found
  --       },
  --       checker = {
  --           enabled = false,
  --           notify = false,
  --       },
  --   },
  -- },

  -- disable neo-tree (filesytem browser)
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },

  -- disable gitsigns (highlight text that changed from last time)
  -- {
  --   "lewis6991/gitsigns.nvim",
  --   enabled = false,
  -- },

  -- disable vim-illuminate (automatically highlight other instances of the word under the cursos)
  {
    "RRethy/vim-illuminate",
    enabled = false,
  },

  -- disable floating cmdline (:)
  -- {
  --     "stevearc/dressing.nvim",
  --     enabled = false,
  -- },

  -- disable bufferline at the top
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },

  -- disable animating indent guides (|)
  {
    "echasnovski/mini.indentscope",
    enabled = false,
  },

  -- disable auto pairs
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },

  -- disable startup screen (shows LazyVim, press [x] for recent files, ...)
  {
    "goolord/alpha-nvim",
    enabled = false,
  },

  -- disable another floating cmdline (:)
  {
    "folke/noice.nvim",
    enabled = false,
    messages = {
      enabled = false,
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          kind = "",
          find = "more line",
        },
      },
      opts = { skip = true },
    },
  },

  -- top left messages
  {
    "rcarriga/nvim-notify",
    enabled = true,
  },

  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },

  -- nvim-navic shows where in code you are (main->foo->bar) in the lualine
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        -- theme = "seoul256",
        section_separators = { left = "|", right = "|" },
        component_separators = { left = "|", right = "|" },
        icons_enabled = false,
        draw_empty = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          -- { "filetype", icon_only = false, separator = "/", padding = { left = 1, right = 0 } },
          { "filename", path = 1, symbols = { modified = "!", readonly = "ro", unnamed = "noname" } },
          "filesize",
        },
        lualine_c = { "branch" },

        lualine_x = { "searchcount", "selectioncount" },
        lualine_y = {},
        lualine_z = { "location" },
      },
    },
  },

  -- disable LuaSnip (and annoying tab doesn't insert tab)
  {
    "L3MON4D3/LuaSnip",
    enabled = true,
    opts = {
      history = false,
    },

    -- build = (not jit.os:find("Windows"))
    --     and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
    --   or nil,
    -- dependencies = {
    --   "rafamadriz/friendly-snippets",
    --   config = function()
    --     require("luasnip.loaders.from_vscode").lazy_load()
    --   end,
    -- },
    -- opts = {
    --   history = true,
    --   delete_check_events = "TextChanged",
    -- },
  },

  -- install lsp servers
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        clangd = {},
        cssls = {},
        dockerls = {},
        docker_compose_language_service = {},
        gopls = {},
        html = {},
        jdtls = {},
        tsserver = {},
        opencl_ls = {},
        volar = {},
        -- pyright = {},
        tailwindcss = {},
      },
      -- autoformat = false,
    },
  },

  -- -- mason: tool for managing packages inside nvim
  -- {
  --     "williamboman/mason.nvim",
  --     opts = {
  --         ensure_installed = {
  --             "mypy",
  --             "ruff",
  --             "pyright",
  --         },
  --     },
  -- },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "lua",
        "rust",
        "go",
        "hlsl",
        "javascript",
        "json",
        "latex",
        "make",
        "sql",
        "toml",
        "vim",
        "yaml",
      },
    },
  },

  -- Install none-ls
  -- {
  --   "nvimtools/none-ls.nvim",
  --   ft = { "python" },
  --   config = function()
  --     local null_ls = require("null-ls")
  --     -- need to import first
  --     null_ls.setup({
  --       sources = {
  --         null_ls.builtins.formatting.black,
  --         null_ls.builtins.formatting.black.with({
  --           extra_args = { "--line-length=120" },
  --         }),
  --         null_ls.builtins.diagnostics.mypy,
  --         null_ls.builtins.formatting.isort,
  --         -- null_ls.builtins.diagnostics.ruff,
  --       },
  --     })
  --   end,
  -- },
  --
  -- NOTE(miha): <alt-i> in telescope shows all files.
  {
    "nvim-telescope/telescope.nvim",
    -- keys = {
    --   { "<leader>fa", Util.telescope("files", { no_ignore = true }), desc = "find all fileas (root dir)" },
    --   { "<leader>fA", Util.telescope("files", { cwd = false, no_ignore = true }), desc = "find all fileas (cwd)" },
    -- },
    keys = {
      -- "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files (test)"
      -- { "<leader><space>", Util.telescope("files", { cwd = true }), desc = "find all files (cwd)" },
      { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "find all files (cwd)" },
      { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    },
    opts = {
      defaults = {
        preview = {
          filesize_hook = function(filepath, bufnr, opts)
            local max_bytes = 10000
            local cmd = { "head", "-c", max_bytes, filepath }
            require("telescope.previewers.utils").job_maker(cmd, bufnr, opts)
          end,
        },
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  -- nvim-cmp disable auto complete window and use omnicomplete: <C-x><C-o>
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    opts = {
      completion = { autocomplete = false },
    },
  },

  -- setup flash.nvim. Better searching with f/t/s.
  {
    "folke/flash.nvim",
    opts = {
      highlight = {
        backdrop = false,
        matches = true,
        groups = {
          match = "FlashMatch",
          current = "FlashCurrent",
          -- backdrop = "FlashBackdrop",
          label = "FlashLabel",
        },
      },
      modes = {
        char = {
          highlight = {
            backdrop = false,
          },
        },
        search = {
          enabled = false,
        },
      },
      label = {
        style = "overlay",
        min_pattern_length = 2,
      },
    },
  },

  {
    "folke/todo-comments.nvim",
    opts = {
      signs = false, -- dont show icons in sign/number column.
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
        info = { "#f5f0bb" }, -- TODO(
        hint = { "#c8e4b2" }, -- NOTE(
        warning = { "#ffcacc" }, -- WARN(
        -- error = {""}, -- FIX(
        hack = { "#96b6c5" }, -- HACK(
        perf = { "#96b6c5" }, -- PERF(
        test = { "#f1f0e8" }, -- TEST(
      },
    },
  },
}
