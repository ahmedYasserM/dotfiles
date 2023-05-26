-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
--

-- lvim.lsp.diagnostics.virtual_text = false



lvim.colorscheme = "gruvbox"
lvim.format_on_save = true

lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"

-- Mapping for Shift + L to move to next tab
-- lvim.keys.normal_mode["<S-l>"] = ":tabnext<CR>"

-- Mapping for Shift + H to move to previous tab
-- lvim.keys.normal_mode["<S-h>"] = ":tabprevious<CR>"

lvim.plugins = {
  {
    "morhetz/gruvbox"
  },
  {
    "simrat39/rust-tools.nvim"
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app; npm install",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },

  {
    "nvim-neorg/neorg",
    config = function()
      require('neorg').setup {
        load = {
          ["core.defaults"] = {},  -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = {      -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      }
    end,
    build = ":Neorg sync-parsers",
    dependencies = "nvim-lua/plenary.nvim",
  },
  {
    "github/copilot.vim"
  }

}
