require('nvim_comment').setup()

vim.keymap.set('n', '<C-/>', ':CommentToggle<CR>')
vim.keymap.set('v', '<C-/>', ':CommentToggle<CR>')
