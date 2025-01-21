local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    markdown = { "prettier" },
    cpp = { "clang-format" },
    go = { "golines", "gofumpt", "goimports" },
    asm = { "asmfmt" },
    rs = { "rustfmt" },
    bash = { "shfmt" },
    -- typst = { "typstfmt" }
    -- css = { "prettier" },
    -- html = { "prettier" },
  },


  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").formatters.golines = {
  prepend_args = {
    "--base-formatter=gofumpt",
    "--no-reformat-tags",
    "--shorten-comments",
    "--chain-split-dots",
  },
}

return options
