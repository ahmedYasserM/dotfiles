local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    markdown = { "prettier" },
    cpp = { "clang-format" },
    go = { "gofumpt", "goimports" },
    asm = { "asmfmt" },
    -- typst = { "typstfmt" }
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
