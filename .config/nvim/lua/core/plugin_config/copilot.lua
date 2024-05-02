vim.cmd [[highlight CopilotSuggestion ctermfg=8 guifg=white guibg=#5c6370]]

vim.api.nvim_set_keymap('i', '<A-;>', 'copilot#Accept("<CR>")', { expr = true, silent = true })
