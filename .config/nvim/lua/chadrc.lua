-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.ui = {
  tabufline = {
    enabled = false,
  },
}

M.base46 = {
  theme = "tokyonight",
  hl_override = {
    -- Normal = { bg = "#10171A" },
    LspInlayHint = { bg = "NONE" },
    CursorLine = { bg = "one_bg" },
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

}

return M
