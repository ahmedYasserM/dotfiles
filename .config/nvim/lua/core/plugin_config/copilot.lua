-- vim.cmd [[highlight CopilotSuggestion ctermfg=8 guifg=white guibg=#D3C6AA]]

vim.api.nvim_set_keymap('i', '<A-;>', 'copilot#Accept("<CR>")', { expr = true, silent = true })
