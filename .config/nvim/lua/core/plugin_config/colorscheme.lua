-- require("catppuccin").setup({
--   flavour = "mocha",
--   transparent_background = true,
--   styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--     comments = { "italic" }, -- Change the style of comments
--   },
-- })



require("everforest").setup({
  background = "medium",
  transparent_background_level = 1,
  italics = true,
  disable_italic_comments = false,
  on_highlights = function(hl, _)
    hl["@string.special.symbol.ruby"] = { link = "@field" }
  end,
})


vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd [[colorscheme everforest]]
