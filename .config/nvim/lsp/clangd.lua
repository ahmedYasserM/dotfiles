local blink = require("blink.cmp")

return {
  cmd = { "clangd", "--offset-encoding=utf-16", "--header-insertion=never" },
  filetypes = { "cpp" },
}
