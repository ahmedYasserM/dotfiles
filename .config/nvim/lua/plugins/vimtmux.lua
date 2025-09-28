return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false, -- force load at startup
    config = function()
      vim.g.tmux_navigator_no_mappings = 1
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<M-h>", "<cmd>TmuxNavigateLeft<CR>", opts)
      vim.keymap.set("n", "<M-j>", "<cmd>TmuxNavigateDown<CR>", opts)
      vim.keymap.set("n", "<M-k>", "<cmd>TmuxNavigateUp<CR>", opts)
      vim.keymap.set("n", "<M-l>", "<cmd>TmuxNavigateRight<CR>", opts)
    end,
  },
}
