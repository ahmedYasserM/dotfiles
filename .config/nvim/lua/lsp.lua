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


-- Nushell
vim.filetype.add({
  extension = {
    nu = "nu",
  },
})

vim.lsp.enable("nushell")


-- Xonsh
vim.filetype.add({
  extension = {
    xsh = "xonsh",
    xonshrc = "xonsh",
  },
  filename = {
    [".xonshrc"] = "xonsh",
    ["xonshrc"] = "xonsh",
  },
})


vim.api.nvim_create_autocmd('User', {
  pattern = 'TSUpdate',
  callback = function()
    require('nvim-treesitter.parsers').xonsh = {
      install_info = {
        url = 'https://github.com/FoamScience/tree-sitter-xonsh',
        queries = 'queries/',
      },
    }
  end,
})

-- 3. Enable tree-sitter highlighting for xonsh
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'xonsh',
  callback = function(args)
    if not require('nvim-treesitter.parsers').xonsh then
      vim.treesitter.start(args.buf, 'xonsh')
    end
  end,
})

vim.lsp.config('xonsh_lsp', {
  cmd = { 'xonsh-lsp' }, -- Uses 'xonsh-lsp' binary from your PATH
  filetypes = { 'xonsh' },
  root_markers = { '.xonshrc', 'xonshrc', '.git' },
})

vim.lsp.enable('xonsh_lsp')
