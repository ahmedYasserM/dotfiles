vim.g.netrw_banner = 0
vim.opt.nu = true
vim.opt.laststatus = 0
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.wrap = true
vim.opt.smartindent = true
vim.opt.inccommand = "split"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true
vim.opt.clipboard:append("unnamedplus")
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.o.cmdheight = 0
vim.opt.completeopt = "menuone,noselect,fuzzy,nosort"
vim.opt.shortmess:append("c")
vim.opt.pumblend = 0  
-- vim.opt.termguicolors = true
