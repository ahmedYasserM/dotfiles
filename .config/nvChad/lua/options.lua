require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.cursorlineopt = "both"
o.clipboard = "unnamedplus"

-- NeoVide
vim.cmd "let g:neovide_padding_top = 15"
vim.cmd 'let g:neovide_cursor_vfx_mode = "sonicboom"'

-- Enable inlay hints
vim.lsp.inlay_hint.enable(true)
