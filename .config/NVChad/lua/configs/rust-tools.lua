local on_attach = require("configs.lspconfig").on_attach
local capabilities = require("configs.lspconfig").capabilities

local options = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
}

return options
