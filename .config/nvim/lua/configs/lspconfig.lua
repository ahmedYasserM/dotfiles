-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local on_attach = require("nvchad.configs.lspconfig").on_attach
local nvlsp = require "nvchad.configs.lspconfig"
local capabilities = require("nvchad.configs.lspconfig").capabilities
local util = require "lspconfig/util"



local servers = { "pylsp", "zls" }

-------------------------------------------------------------------------------- SETUP C++ LSP START -----------------------------------------------------------------

local cmp_nvim_lsp = require "cmp_nvim_lsp"
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

-------------------------------------------------------------------------------- SETUP C++ LSP END -------------------------------------------------------------------

-------------------------------------------------------------------------------- SETUP GOLANG LSP START --------------------------------------------------------------

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
}

-------------------------------------------------------------------------------- SETUP GOLANG LSP END ----------------------------------------------------------------
-------------------------------------------------------------------------------- SETUP Assembly LSP START ------------------------------------------------------------

lspconfig["asm_lsp"].setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = { "asm", "s", "S" },
  cmd = { "asm-lsp" },
  root_dir = util.root_pattern ".git",
}

-------------------------------------------------------------------------------- SETUP Assembly LSP END --------------------------------------------------------------
-------------------------------------------------------------------------------- SETUP Typst LSP START ---------------------------------------------------------------

lspconfig.typst_lsp.setup {
  settings = {
    exportPdf = "onType" -- Choose onType, onSave or never.
    -- serverPath = "" -- Normally, there is no need to uncomment it.
  }
}

-------------------------------------------------------------------------------- SETUP Typst LSP END -----------------------------------------------------------------

-------------------------------------------------------------------------------- SETUP Bash LSP START ----------------------------------------------------------------

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start({
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    })
  end,
})
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = nvlsp.on_init,
    capabilities = capabilities,
  }
end


-------------------------------------------------------------------------------- SETUP Bash LSP END ------------------------------------------------------------------
-------------------------------------------------------------------------------- SETUP Rust LSP START ----------------------------------------------------------------

lspconfig.rust_analyzer.setup({
  on_attach = function(client, bufnr)
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  end
})

-- lspconfig.rust_analyzer.setup {
--   settings = {
--     ['rust-analyzer'] = {
--       diagnostics = {
--         enable = false,
--       }
--     }
--   }
-- }

-------------------------------------------------------------------------------- SETUP Rust LSP END ------------------------------------------------------------------
