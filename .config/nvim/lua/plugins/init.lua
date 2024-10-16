return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "json", "toml", "yaml", "cpp", "python", "go", "bash", "dockerfile", "c"
      },
    },
  },

  {
    "github/copilot.vim",
    lazy = false,
  },

  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      filetypes = { "*" },
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = true,
        RRGGBBAA = false,
        AARRGGBB = false,
        rgb_fn = true,
        hsl_fn = false,
        css = false,
        css_fn = false,
        mode = "background",
        tailwind = true,
        sass = { enable = false, parsers = { "css" } },
        virtualtext = "■",
        always_update = false,
      },
      buftypes = {},
    },
  },

  {
    "ixru/nvim-markdown",
    lazy = false,
  },

  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        silent_chdir = false,
        require("nvim-tree").setup {
          view = {
            side = "right",
          },
          sync_root_with_cwd = true,
          respect_buf_cwd = true,
          update_focused_file = {
            enable = true,
            update_root = true,
          },
        },
      }
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  {
    "rafamadriz/friendly-snippets",
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        signature = {
          enabled = false,
        }
      },
      messages = {
        enabled = false,
      },
      cmdline = {
        enabled = true,
      },
      notify = {
        enabled = false,
      },

    },
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },

  {
    'kaarmu/typst.vim',
    ft = 'typst',
    lazy = false,
  },

  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>l",
        "<cmd>Yazi cwd<cr>",
        desc = "Open the file manager in nvim's working directory",
      },
    },
    opts = {
      open_for_directories = false,
      keymaps = {
        show_help = '<f1>',
      },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
