require "nvchad.options"

-- add yours here!

local o = vim.o
o.clipboard = "unnamedplus"
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.o.relativenumber = true

-- Enable inlay hints
vim.lsp.inlay_hint.enable(true)
