-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local on_attach = require("nvchad.configs.lspconfig").on_attach
local nvlsp = require "nvchad.configs.lspconfig"
local capabilities = require("nvchad.configs.lspconfig").capabilities
local util = require "lspconfig/util"



local servers = { "zls", "pylsp" }

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

-- lspconfig.rust_analyzer.setup({
--   on_attach = function(client, bufnr)
--     vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
--   end
-- })

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

-------------------------------------------------------------------------------- SETUP Python LSP START ----------------------------------------------------------------

-- Pyright setup
lspconfig.pyright.setup {}

-- Null-ls setup for Black, Ruff, MyPy
local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black, -- Black
    null_ls.builtins.diagnostics.ruff, -- Ruff
    --null_ls.builtins.diagnostics.mypy, -- MyPy
  },
})

-- local dap = require('dap')
-- Set key mappings for debugging
-- vim.api.nvim_set_keymap('n', '<F5>', ':lua require"dap".continue()<CR>', { noremap = true, silent = true })  -- Start/Continue
-- vim.api.nvim_set_keymap('n', '<F10>', ':lua require"dap".step_over()<CR>', { noremap = true, silent = true }) -- Step Over
-- vim.api.nvim_set_keymap('n', '<F11>', ':lua require"dap".step_into()<CR>', { noremap = true, silent = true }) -- Step Into
-- vim.api.nvim_set_keymap('n', '<F12>', ':lua require"dap".step_out()<CR>', { noremap = true, silent = true }) -- Step Out
-- vim.api.nvim_set_keymap('n', '<leader>b', ':lua require"dap".toggle_breakpoint()<CR>', { noremap = true, silent = true }) -- Toggle Breakpoint


-------------------------------------------------------------------------------- SETUP Python LSP END ------------------------------------------------------------------
