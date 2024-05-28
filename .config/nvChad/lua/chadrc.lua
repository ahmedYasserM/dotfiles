---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everforest",

  changed_themes = {
    everforest = {
      base_16 = {
        base00 = "#1D2327",
      },
    },
  },
  transparency = false,
  tabufline = {
    enabled = false,
  },

  hl_override = {
    LspInlayHint = { bg = "NONE" },
  },
}

return M
