return {
  -- comments
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
  },

  -- Neovim plugin to improve the default vim.ui interfaces
  {
    "stevearc/dressing.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
    config = function()
      require("dressing").setup()
    end,
  },

  -- Neovim notifications and LSP progress messages
  {
    "j-hui/fidget.nvim",
  },

  -- Heuristically set buffer options
  {
    "tpope/vim-sleuth",
  },

  {
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },

    -- editor config support
    {
      "editorconfig/editorconfig-vim",
    },

    -- persist sessions
    {
      "folke/persistence.nvim",
      event = "BufReadPre", -- this will only start session saving when an actual file was opened
      opts = {},
    },

    {
      "echasnovski/mini.nvim",
      config = function()
        -- Better Around/Inside textobjects
        --
        -- Examples:
        --  - va)  - [V]isually select [A]round [)]paren
        --  - yinq - [Y]ank [I]nside [N]ext [']quote
        --  - ci'  - [C]hange [I]nside [']quote
        require("mini.ai").setup({ n_lines = 500 })

        -- Add/delete/replace surroundings (brackets, quotes, etc.)
        --
        -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
        -- - sd'   - [S]urround [D]elete [']quotes
        -- - sr)'  - [S]urround [R]eplace [)] [']
        require("mini.surround").setup({
          mappings = {
            add = ",a", -- Add surrounding in Normal and Visual modes
            delete = ",d", -- Delete surrounding
            replace = ",r", -- Replace surrounding
            highlight = ",h", -- Highlight surrounding
            find = "", -- Find surrounding (to the right)
            find_left = "", -- Find surrounding (to the left)
          },
        })

        require("mini.pairs").setup()

        -- local statusline = require("mini.statusline")
        -- statusline.setup({
        --   use_icons = vim.g.have_nerd_font,
        -- })
        -- ---@diagnostic disable-next-line: duplicate-set-field
        -- statusline.section_location = function()
        --   return "%2l:%-2v"
        -- end
      end,
    },

    {
      "echasnovski/mini.icons",
      enabled = true,
      opts = {},
      lazy = true,
    },

    {
      "fladson/vim-kitty",
      "MunifTanjim/nui.nvim",
    },

    {
      "nvchad/showkeys",
      cmd = "ShowkeysToggle",
      opts = {
        timeout = 1,
        maxkeys = 6,
        -- bottom-left, bottom-right, bottom-center, top-left, top-right, top-center
        position = "bottom-right",
      },

      keys = {
        {
          "<leader>ut",
          function()
            vim.cmd("ShowkeysToggle")
          end,
          desc = "Show key presses",
        },
      },
    },

    {
      "Fildo7525/pretty_hover",
      event = "LspAttach",
      opts = {},
    },

    {
      "folke/flash.nvim",
      event = "VeryLazy",
      ---@type Flash.Config
      opts = {},
      -- stylua: ignore
      keys = {
        { ",s",    mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
        { ",S",    mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
        { ",v",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
        { ",c",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
      },
    },

    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      lazy = false,
      opts = {},
    },

    {
      "utilyre/barbecue.nvim",
      name = "barbecue",
      version = "*",
      dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional
      },
      opts = {
        show_dirname = true, -- show directory path
        show_basename = true, -- show filename
        attach_navic = false, -- disable navic (LSP symbols)
        show_navic = false, -- also do not show navic contexts
        create_autocmd = false, -- you update manually as in your config
      },
      config = function()
        require("barbecue").setup({
          show_dirname = true,
          show_basename = true,
          attach_navic = false,
          show_navic = false,
          create_autocmd = false,
        })

        vim.api.nvim_create_autocmd({
          "WinScrolled",
          "BufWinEnter",
          "CursorHold",
          "InsertLeave",
        }, {
          group = vim.api.nvim_create_augroup("barbecue.updater", {}),
          callback = function()
            require("barbecue.ui").update()
          end,
        })
      end,
    },

    {
      "nvim-lua/plenary.nvim",
    },

    {
      "mikavilpas/yazi.nvim",
      event = "VeryLazy",
      dependencies = {
        { "nvim-lua/plenary.nvim", lazy = true },
      },
      keys = {
        {
          "<C-e>",
          mode = { "n", "v" },
          "<cmd>Yazi<cr>",
          desc = "Open yazi at the current file",
        },
      },
    },

    {
      "MeanderingProgrammer/render-markdown.nvim",
      dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
      ---@module 'render-markdown'
      opts = {},
      lazy = false,
    },

    {
      "chomosuke/typst-preview.nvim",
      lazy = false, -- or ft = 'typst'
      version = "1.*",
      opts = {}, -- lazy.nvim will implicitly calls `setup {}`
    },

    -- Autotags
    -- {
    --   "windwp/nvim-ts-autotag",
    --   opts = {},
    -- },

    -- find and replace
    -- {
    --   "windwp/nvim-spectre",
    --   enabled = true,
    --   event = "BufRead",
    --   keys = {
    --     {
    --       "<leader>Rr",
    --       function()
    --         require("spectre").open()
    --       end,
    --       desc = "Replace",
    --     },
    --     {
    --       "<leader>Rw",
    --       function()
    --         require("spectre").open_visual({ select_word = true })
    --       end,
    --       desc = "Replace Word",
    --     },
    --     {
    --       "<leader>Rf",
    --       function()
    --         require("spectre").open_file_search()
    --       end,
    --       desc = "Replace Buffer",
    --     },
    --   },
    -- },

    -- {
    --   "saghen/blink.cmp",
    --   opts = {
    --     sources = {
    --       -- add lazydev to your completion providers
    --       default = { "lazydev", "lsp", "path", "snippets", "buffer" },
    --       providers = {
    --         lazydev = {
    --           name = "LazyDev",
    --           module = "lazydev.integrations.blink",
    --           -- make lazydev completions top priority (see `:h blink.cmp`)
    --           score_offset = 100,
    --         },
    --       },
    --     },
    --   },
    -- }
    -- },
  },
}
