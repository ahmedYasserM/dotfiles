require('nvim_comment').setup()

vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')
vim.keymap.set('v', '<leader>/', ':CommentToggle<CR>')
