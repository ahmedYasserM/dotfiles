vim.pack.add({
  "https://github.com/folke/snacks.nvim",
  "https://github.com/HakonHarnes/img-clip.nvim",
  "https://github.com/echasnovski/mini.pairs",
  "https://github.com/christoomey/vim-tmux-navigator",
  "https://github.com/meanderingprogrammer/render-markdown.nvim",
  "https://github.com/nvim-mini/mini.icons",
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/Saghen/blink.cmp",
  "https://github.com/saghen/blink.lib",
  "https://github.com/mikavilpas/yazi.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/projekt0n/github-nvim-theme",
  "https://github.com/folke/tokyonight.nvim",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/tpope/vim-fugitive",
})

-- Telescope
local has_telescope, telescope = pcall(require, "telescope")
if not has_telescope then
  return
end


local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    mappings = {
      -- Mappings for normal mode (if you switch out of insert mode inside the prompt)
      n = {
        ["<M-j>"] = actions.move_selection_next,
        ["<M-k>"] = actions.move_selection_previous,
      },
      -- Mappings for insert mode (while you are actively typing your search)
      i = {
        ["<M-j>"] = actions.move_selection_next,
        ["<M-k>"] = actions.move_selection_previous,
      },
    },
  }
})

-- Yazi
require("yazi").setup({
  yazi_floating_window_border = "rounded",

  open_for_directories = false,
  highlight_groups = {

    YaziFloatBorder = {
      fg = "#89b4fa",
    },
  },
})


-- Mason
require("mason").setup()

-- blink
local cmp = require("blink.cmp")

cmp.build():pwait()

cmp.setup({
  keymap = {
    preset = "default",
    ["<A-k>"] = { "select_prev", "fallback" },
    ["<A-j>"] = { "select_next", "fallback" },
    ["<CR>"] = { "accept", "fallback" },
  },
  appearance = {
    nerd_font_variant = "mono",
  },

  completion = {
    menu = {
      border = "rounded",

      draw = {
        columns = {
          { "kind_icon" },
          { "label",    gap = 1 },
          { "kind" },
        },
      },
    },
  },

  sources = {
    default = {
      "lsp",
      "path",
      "buffer",
    },
  },
})

-- Conform
require("conform").setup({
  formatters_by_ft = {
    python = { "ruff_format" },
    rust = { "rustfmt" },
    zig = { "zigfmt" },
    lua = { "stylua" },
    nu = { "nufmt" }
  },
})

-- Mini Icons
require("mini.icons").setup()

-- Render Markdown
require("render-markdown").setup({
  enabled = true,

  render_modes = { "n", "c", "t" },

  heading = {
    enabled = true,
    sign = true,
  },

  code = {
    enabled = true,
    sign = true,
    style = "full",
    border = "thin",
    language = true,
    language_icon = true,
    language_name = true,
  },

  bullet = {
    enabled = true,
  },

  checkbox = {
    enabled = true,
  },

  quote = {
    enabled = true,
  },

  link = {
    enabled = true,
  },

  pipe_table = {
    enabled = true,
  },
})

-- VimTmux Navigator
vim.g.tmux_navigator_no_mappings = 1
local nav = {
  h = "TmuxNavigateLeft",
  j = "TmuxNavigateDown",
  k = "TmuxNavigateUp",
  l = "TmuxNavigateRight",
}

for key, command in pairs(nav) do
  vim.keymap.set("n", "<A-" .. key .. ">", "<cmd>" .. command .. "<cr>", {
    silent = true,
    desc = "Navigate " .. key,
  })
end

-- MiniPairs
require("mini.pairs").setup()


-- Snacks
local snacks = require("snacks")
snacks.setup({
  image = {
    enabled = true, -- Enables the inline terminal image rendering
    doc = {
      enabled = true,
      inline = true,   -- Renders the image directly inside the file buffer
      max_width = 60,  -- Max width in terminal columns (Default is usually 80)
      max_height = 20, -- Max height in terminal rows (Default is usually 40)
    },
  },
})

-- img-clip
local img_clip = require("img-clip")
img_clip.setup({
  default = {
    dir_path = "assets/img", -- Directory where your images will save locally
    extension = "png",
    embed_image_as_markdown = true,
    prompt_for_file_name = true, -- Prompts you to name the image file upon paste
  },
})


-- RenderMarkdown
require('render-markdown').setup({
  code = {
    inline = true,
    inline_left = "", -- Smooth Nerd Font left curve
    inline_right = "", -- Smooth Nerd Font right curve
    inline_pad = 0,
    highlight_inline = "TokyonightCustomInlineCode",
    highlight_inline_left = "TokyonightCustomInlineCodeEdge",
    highlight_inline_right = "TokyonightCustomInlineCodeEdge",
  }
})
