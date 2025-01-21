local null_ls = require('null-ls')

local opts = {
  sources = {
    -- Python
    null_ls.builtins.formatting.black, -- Black
    -- null_ls.builtins.diagnostics.ruff, -- Ruff (TODO: Fix this, when I uncomment this it makes none-ls not work)
    null_ls.builtins.diagnostics.mypy, -- MyPy

    -- Go
    -- null_ls.builtins.diagnostics.golangci_lint, -- GolangCI-Lint
  }
}

null_ls.setup(opts)

return opts
