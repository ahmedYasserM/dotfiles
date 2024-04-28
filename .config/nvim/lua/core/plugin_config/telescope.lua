require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*" } })
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-i>', builtin.find_files, {})
vim.keymap.set('n', '<C-o>', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.live_grep, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})