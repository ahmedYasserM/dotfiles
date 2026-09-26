vim.cmd.colorscheme("tokyonight-night")
local bg = "#0D0F18"

local groups = {
  "Normal",
  "NormalNC",
  "SignColumn",
  "FoldColumn",
  "LineNr",
  "CursorLineNr",
  "EndOfBuffer",
  "MsgArea",
  "MsgSeparator",
  "StatusLine",
  "StatusLineNC",
  "TabLine",
  "TabLineFill",
  "WinBar",
  "WinBarNC",
  "NormalFloat",
  "FloatBorder",
  "Pmenu",
  "PmenuExtra",
  "PmenuSbar",
}

for _, group in ipairs(groups) do
  vim.api.nvim_set_hl(0, group, { bg = bg })
end

-- Blink Completion Window
vim.api.nvim_set_hl(0, "BlinkCmpMenu", {
  bg = bg,
})

vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", {
  bg = bg,
  fg = "#303548",
})

vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", {
  bg = "#191D2A",
  fg = "#FFFFFF",
})

vim.api.nvim_set_hl(0, "BlinkCmpLabel", {
  bg = bg,
})

vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", {
  bg = bg,
  fg = "#89B4FA",
  bold = true,
})

vim.api.nvim_set_hl(0, "BlinkCmpKind", {
  bg = bg,
  fg = "#7F849C",
})

vim.api.nvim_set_hl(0, "BlinkCmpDoc", {
  bg = bg,
  fg = "#CDD6F4",
})

vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", {
  bg = bg,
  fg = "#303548",
})


-- Hover Window
vim.o.winborder = "rounded"

vim.api.nvim_set_hl(0, "NormalFloat", {
  bg = "#0D0F18",
  fg = "#CDD6F4",
})

vim.api.nvim_set_hl(0, "FloatBorder", {
  bg = "#0D0F18",
  fg = "#3B4054",
})

vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover({
    max_width = 80,
    max_height = 15,
  })
end, { desc = "LSP Hover" })

-- Render Markdown
vim.api.nvim_set_hl(0, "RenderMarkdownCode", {
  bg = "#111522",
})

vim.api.nvim_set_hl(0, "RenderMarkdownCodeInfo", {
  bg = "#111522",
  fg = "#7F849C",
})

vim.api.nvim_set_hl(0, "RenderMarkdownH1Bg", {
  bg = bg,
})

vim.api.nvim_set_hl(0, "RenderMarkdownH2Bg", {
  bg = bg,
})

vim.api.nvim_set_hl(0, "RenderMarkdownH3Bg", {
  bg = bg,
})
