local blink = require("blink.cmp")

return {
  cmd = { "tinymist" },
  filetypes = { "typst" },
  single_file_support = true,
  settings = {
    formatterMode = "typstyle", -- or "typstfmt"
    exportPdf = "onType", -- or "onType", "onSave", "never"
  },
}
