require "nvchad.options"

-- add yours here!

local o = vim.o
o.clipboard = "unnamedplus"
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.o.relativenumber = true

-- Enable inlay hints
vim.lsp.inlay_hint.enable(true)


-- Hide neovim statusline
vim.cmd([[
set laststatus=0
hi! link StatusLine Normal
hi! link StatusLineNC Normal
set statusline=%{repeat('─',winwidth('.'))}
]])

vim.cmd([[
autocmd BufEnter,BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window -t " . $TMUX_PANE . " '" . expand("%") . "'")
" Restore automatic renaming of the tmux window when vim exits
if exists('$TMUX')
    " Rename only the current Tmux pane's window
    autocmd BufEnter * call system("tmux rename-window -t " . $TMUX_PANE . " '" . expand("%:t") . "'")
    autocmd VimLeave * call system("tmux setw -t " . $TMUX_PANE . " automatic-rename")
endif
]])
