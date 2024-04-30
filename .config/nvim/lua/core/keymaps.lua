-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('i', 'jk', '<ESC>')

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- pastever currently selected text wihout yanking it
vim.keymap.set("v", "p", '"_dp"')
vim.keymap.set("v", "P", '"_dp"')


-- Remap for dealing with visual line wraps
--map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
--map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move line on the screen rather than by line in the file
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Move to start/end of line
vim.keymap.set({ "n", "x", "o" }, "H", "^")
vim.keymap.set({ "n", "x", "o" }, "L", "g_")


vim.keymap.set('n', "<leader>v", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>")


-- vim.keymap.set('i', '<c-k>', '<up>')
-- vim.keymap.set('i', '<c-j>', '<down>')
-- vim.keymap.set('i', '<c-l>', '<right>')
-- vim.keymap.set('i', '<c-h>', '<left>')
