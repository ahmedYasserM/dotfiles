local capabilities = require("blink.cmp").get_lsp_capabilities()

local servers = {
  pyright = {
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          diagnosticMode = "openFilesOnly",
        },
      },
    },
  },

  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        check = {
          command = "clippy",
        },
      },
    },
  },

  lua_ls = {
    settings =
    {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },

  zls = {},
}

for server, config in pairs(servers) do
  config.capabilities = capabilities
  vim.lsp.config(server, config)
end

vim.lsp.enable(vim.tbl_keys(servers))
