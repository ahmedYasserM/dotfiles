---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tokyonight",
  transparency = true,

  changed_themes = {
    everforest = {
      base_16 = {
        base00 = "#1D2327",
      },
    },
  },
  tabufline = {
    enabled = false,
  },

  hl_override = {
    LspInlayHint = { bg = "NONE" },
    CursorLine = { bg = "one_bg" },
  },
}

return M
