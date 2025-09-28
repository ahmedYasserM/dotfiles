local blink = require("blink.cmp")

return {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", ".venv", ".python-version", ".git" },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly", -- or "workspace"
        typeCheckingMode = "off", -- "basic", "off", "strict"
        stubPath = "typings",
        autoImportCompletions = true,
      },
    },
  },
}
